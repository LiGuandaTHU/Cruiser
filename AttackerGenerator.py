import yaml
import re
import sys

def yamlfile2name(attacker_config_filename):
    return attacker_config_filename.split("/")[-1][:-5]

def replace_non_alphanum(text):
    return re.sub(r'[^a-zA-Z0-9]', '_', text)

def get_value_type(valueDict):
    for key in valueDict:
        if key != "operation":
            return key

def get_value(valueDict):
    value_type = get_value_type(valueDict)
    if value_type == "const":
        return "basic", valueDict["const"] + valueDict.get("operation", "")
    elif value_type == "variable":
        return "basic", valueDict["variable"] + valueDict.get("operation", "")
    elif value_type == "cacheref":
        ref = valueDict["cacheref"]
        return "basic", replace_non_alphanum(ref["channel"]) + "_" + ref["field"] + "_" + ref["pattern"] + "CACHE" + valueDict.get("operation", "")
    elif value_type == "one of":
        valuelist = valueDict["one of"]
        return "one of", [get_value(value)[1] for value in valuelist]
    elif value_type == "range":
        minmaxlist = valueDict["range"]
        return "range", [get_value(value)[1] for value in minmaxlist]
    else:
        print(f"Error: Value type {value_type} is not defined.")
        sys.exit(1)

def get_ref_checked(valueDict, channels):
    boolref = False
    cache_channel_pattern_needed = set()
    value_type = get_value_type(valueDict)
    if value_type == "const" or value_type == "variable":
        return boolref, cache_channel_pattern_needed
    elif value_type == "cacheref":
        channel_o = valueDict["cacheref"]["channel"]
        channel = replace_non_alphanum(channel_o)
        if channel not in channels:
            print(f"Error: Channel {channel_o} used in cacheref is not defined.")
            sys.exit(1)
        field_found = False
        for field in channels[channel]:
            if field[0] == valueDict["cacheref"]["field"]:
                field_found = True
                break
        if not field_found:
            print(f"Error: Field {valueDict['cacheref']['field']} used in cacheref is not defined in channel {channel_o}.")
            sys.exit(1)
        boolref = True
        cache_channel_pattern_needed.add((valueDict["cacheref"]["channel"], valueDict["cacheref"]["pattern"]))
        return boolref, cache_channel_pattern_needed
    elif value_type == "one of":
        valuelist = valueDict["one of"]
        for value in valuelist:
            b, ccpn = get_ref_checked(value, channels)
            boolref = boolref or b
            cache_channel_pattern_needed.update(ccpn)
        return boolref, cache_channel_pattern_needed
    elif value_type == "range":
        minmaxlist = valueDict["range"]
        for value in minmaxlist:
            b, ccpn = get_ref_checked(value, channels)
            boolref = boolref or b
            cache_channel_pattern_needed.update(ccpn)
        return boolref, cache_channel_pattern_needed
    else:
        print(f"Error: Value type {value_type} is not defined.")
        sys.exit(1)

def GenerateAttackerCode(attackerConfigFile: str, isContainedInSenario: bool):
    with open(attackerConfigFile, "r") as f:
        cfg = yaml.safe_load(f)
    # 重新组织
    channels = {}
    needs_end = cfg["end"]
    attacker_name = yamlfile2name(attackerConfigFile)
    for chan in cfg["channel"]:
        name = replace_non_alphanum(chan["name"])
        fields = []
        for field in chan["field"]:
            fields.append((field["fieldname"], field["fieldtype"]))
        channels[name] = fields
    behavior_codes = []
    channel_pattern = set()
    recv_variables = {}
    send_variables = {}
    all_cache_channel_pattern_needed = set()

    # 第一遍扫描：收集所有定义了的channel-pattern；检查pattern和channel的定义是否合法
    for behv in cfg["behavior"]:
        pattern = behv["pattern"]
        channel_o = behv["channel"]
        channel = replace_non_alphanum(channel_o)
        if pattern != "INTERCEPTION" and pattern != "SNIFFING" and pattern != "INJECTION":
            print(f"Error: Behavior pattern {pattern} is not defined.")
            sys.exit(1)
        if channel not in channels:
            print(f"Error: Channel {channel} is not defined.")
            sys.exit(1)
        channel_pattern.add((channel_o, pattern))

    # 第二遍扫描：确定每个行为是否依赖于别的缓存，以及依赖于哪些channel-pattern的缓存；相关信息添加进当前behv中
    # 同时检查这些依赖是否合法——channel-pattern必须在第一遍扫描中被定义过，同时变量也存在于channel的field中
    for behv in cfg["behavior"]:
        need_cache = False
        cache_channel_pattern_needed = set()
        if "filter" in behv and behv["filter"] != "NONE":
            for valuedict in behv["filter"].values():
                b, ccpn = get_ref_checked(valuedict, channels)
                need_cache = need_cache or b
                cache_channel_pattern_needed.update(ccpn)
        if "assigner" in behv:
            for valuedict in behv["assigner"].values():
                b, ccpn = get_ref_checked(valuedict, channels)
                need_cache = need_cache or b
                cache_channel_pattern_needed.update(ccpn)
        behv["need_cache"] = need_cache
        behv["cache_channel_pattern_needed"] = cache_channel_pattern_needed
        for ccpn in cache_channel_pattern_needed:
            if ccpn not in channel_pattern:
                print(f"Error: Behavior depends on cache from channel-pattern ({ccpn[0]}, {ccpn[1]}) which is not defined.")
                sys.exit(1)
        all_cache_channel_pattern_needed.update(cache_channel_pattern_needed)

    # 第三遍扫描：确定每个behv是否被依赖；
    for behv in cfg["behavior"]:
        if (behv["channel"], behv["pattern"]) in all_cache_channel_pattern_needed:
            behv["is_referred"] = True
        else:
            behv["is_referred"] = False

    # 第四遍扫描：修正所有filter和assigner中的值的内容 -> （basic, 代码变量名) 或 (one of/range, [值列表])
    for behv in cfg["behavior"]:
        if "filter" in behv and behv["filter"] != "NONE":
            new_filter = {}
            for fieldname in behv["filter"]:
                new_filter[fieldname] = get_value(behv["filter"][fieldname])
            behv["filter"] = new_filter
        if "assigner" in behv:
            new_assigner = {}
            for fieldname in behv["assigner"]:
                new_assigner[fieldname] = get_value(behv["assigner"][fieldname])
            behv["assigner"] = new_assigner

    # 第五遍扫描：生成攻击行为代码
    behavior_codes.append("// Attack Behavior")
    behavior_codes.append("AttackStart:")
    behavior_codes.append("do")
    for behv in cfg["behavior"]:
        pattern = behv["pattern"]
        channel_o = behv["channel"]
        channel = replace_non_alphanum(channel_o)
        
        # 按照pattern类型生成代码
        # INTERCEPTION 消息截获
        if pattern == "INTERCEPTION":
            filter = behv["filter"]
            # 没有过滤器（自然不依赖于别人的缓存，直接接收！）
            if filter == "NONE":
                behavior_codes.append(f"// INTERCEPTION on channel {channel_o} with no filter")
                # 且被依赖缓存：就直接接收到缓存变量，并更新缓存状态变量
                if behv["is_referred"]:
                    recv_sentence = ""
                    for field in channels[channel]:
                        recv_sentence += f"{channel}_{field[0]}_{pattern}CACHE, "
                    recv_sentence = recv_sentence[:-2]
                    behavior_codes.append(f":: atomic {{ {channel_o} ? {recv_sentence} ->")
                    behavior_codes.append(f"\tis_{channel}_{pattern}_cached = true;")
                # 且不被依赖缓存：就接收到普通变量——增加接收变量集合（可能重复添加，但字典会自动过滤没所谓）
                else:
                    recv_sentence = ""
                    for field in channels[channel]:
                        recv_sentence += f"{channel}_{field[0]}_recv, "
                        recv_variables[f"{channel}_{field[0]}_recv"] = field[1]
                    recv_sentence = recv_sentence[:-2]
                    behavior_codes.append(f":: atomic {{ {channel_o} ? {recv_sentence};")
            # 有过滤器，就需要复制到接收变量，条件过滤
            else:
                # 增加接收变量集合（可能重复添加，但字典会自动过滤没所谓）
                for field in channels[channel]:
                    recv_variables[f"{channel}_{field[0]}_recv"] = field[1]
                behavior_codes.append(f"// INTERCEPTION on channel {channel_o} with filter")
                # 构造复制语句——缓存检查+接收变量
                recv_sentence = ""
                for field in channels[channel]:
                    recv_sentence += f"{channel}_{field[0]}_recv, "
                recv_sentence = recv_sentence[:-2]
                cache_sentence = ""
                if behv["need_cache"]:
                    for ccpn in behv["cache_channel_pattern_needed"]:
                        cache_sentence += f"is_{replace_non_alphanum(ccpn[0])}_{ccpn[1]}_cached && "
                behavior_codes.append(f":: atomic {{ {cache_sentence}{channel_o} ? <{recv_sentence}> ->")
                # 构造过滤条件语句
                behavior_codes.append(f"\tif")
                condition_sentence = ""
                for fieldname in filter:
                    little_condition = ""
                    condition_value = filter[fieldname]
                    if condition_value[0] == "basic":
                        little_condition = f"{channel}_{fieldname}_recv == {condition_value[1]}"
                    elif condition_value[0] == "one of":
                        little_condition = "("
                        for val in condition_value[1]:
                            little_condition += f"{channel}_{fieldname}_recv == {val} || "
                        little_condition = little_condition[:-4] + ")"
                    elif condition_value[0] == "range":
                        little_condition = f"({channel}_{fieldname}_recv >= {condition_value[1][0]} && {channel}_{fieldname}_recv <= {condition_value[1][1]})"
                    condition_sentence += little_condition + " && "
                condition_sentence = condition_sentence[:-4]
                behavior_codes.append(f"\t:: {condition_sentence} ->")
                # 构造接收语句
                # 如果被依赖缓存：就接收到缓存变量，并更新缓存状态变量
                if behv["is_referred"]:
                    recv_sentence = ""
                    for field in channels[channel]:
                        recv_sentence += f"{channel}_{field[0]}_{pattern}CACHE, "
                    recv_sentence = recv_sentence[:-2]
                    behavior_codes.append(f"\t\t{channel_o} ? {recv_sentence};")
                    behavior_codes.append(f"\t\tis_{channel}_{pattern}_cached = true;")
                # 如果不被依赖缓存：就接收到接收变量——接收变量集合已经添加过了
                else:
                    recv_sentence = ""
                    for field in channels[channel]:
                        recv_sentence += f"{channel}_{field[0]}_recv, "
                    recv_sentence = recv_sentence[:-2]
                    behavior_codes.append(f"\t\t{channel_o} ? {recv_sentence};")
                behavior_codes.append(f"\t:: else -> skip;")
                behavior_codes.append(f"\tfi;")
        # SNIFFING 消息监听
        elif pattern == "SNIFFING":
            # 检查是否被依赖：如果不被依赖缓存，则不需要生成监听代码——没人用它的缓存，监听了干啥？
            if not behv["is_referred"]:
                print(f"Warning: SNIFFING behavior on channel {channel_o} is not referred by any behavior. Skipping code generation.")
                continue
            filter = behv["filter"]
            # 没有过滤器（自然不依赖于别人的缓存，直接复制！），就直接复制到缓存变量，并更新缓存状态变量
            if filter == "NONE":
                behavior_codes.append(f"// SNIFFING on channel {channel_o} with no filter")
                recv_sentence = ""
                for field in channels[channel]:
                    recv_sentence += f"{channel}_{field[0]}_{pattern}CACHE, "
                recv_sentence = recv_sentence[:-2]
                behavior_codes.append(f":: atomic {{ {channel_o} ? <{recv_sentence}> ->")
                behavior_codes.append(f"\tis_{channel}_{pattern}_cached = true;")
            # 有过滤器，就需要复制到接收变量，条件过滤
            else:
                # 增加接收变量集合（可能重复添加，但字典会自动过滤没所谓）
                for field in channels[channel]:
                    recv_variables[f"{channel}_{field[0]}_recv"] = field[1]
                behavior_codes.append(f"// SNIFFING on channel {channel_o} with filter")
                # 构造复制语句——缓存检查+接收变量
                recv_sentence = ""
                for field in channels[channel]:
                    recv_sentence += f"{channel}_{field[0]}_recv, "
                recv_sentence = recv_sentence[:-2]
                cache_sentence = ""
                if behv["need_cache"]:
                    for ccpn in behv["cache_channel_pattern_needed"]:
                        cache_sentence += f"is_{replace_non_alphanum(ccpn[0])}_{ccpn[1]}_cached && "
                behavior_codes.append(f":: atomic {{ {cache_sentence}{channel_o} ? <{recv_sentence}> ->")
                # 构造过滤条件语句
                behavior_codes.append(f"\tif")
                condition_sentence = ""
                for fieldname in filter:
                    little_condition = ""
                    condition_value = filter[fieldname]
                    if condition_value[0] == "basic":
                        little_condition = f"{channel}_{fieldname}_recv == {condition_value[1]}"
                    elif condition_value[0] == "one of":
                        little_condition = "("
                        for val in condition_value[1]:
                            little_condition += f"{channel}_{fieldname}_recv == {val} || "
                        little_condition = little_condition[:-4] + ")"
                    elif condition_value[0] == "range":
                        little_condition = f"({channel}_{fieldname}_recv >= {condition_value[1][0]} && {channel}_{fieldname}_recv <= {condition_value[1][1]})"
                    condition_sentence += little_condition + " && "
                condition_sentence = condition_sentence[:-4]
                behavior_codes.append(f"\t:: {condition_sentence} ->")
                # 构造真正复制语句——复制到缓存变量，并更新缓存状态变量
                recv_sentence = ""
                for field in channels[channel]:
                    recv_sentence += f"{channel}_{field[0]}_{pattern}CACHE, "
                recv_sentence = recv_sentence[:-2]
                behavior_codes.append(f"\t\t{channel_o} ? <{recv_sentence}>;")
                behavior_codes.append(f"\t\tis_{channel}_{pattern}_cached = true;")
                behavior_codes.append(f"\t:: else -> skip;")
                behavior_codes.append(f"\tfi;")
        # INJECTION 消息注入
        elif pattern == "INJECTION":
            # 检查是否所有的field都被assigner赋值了
            def_fields = set()
            for field in channels[channel]:
                def_fields.add(field[0])
            assigned_fields = set()
            for fieldname in behv["assigner"]:
                assigned_fields.add(fieldname)
            if def_fields != assigned_fields:
                print(f"Error: Not all fields in channel {channel_o} are assigned in INJECTION behavior.")
                sys.exit(1)
            # 生成赋值并发送消息代码
            assigner = behv["assigner"]
            behavior_codes.append(f"// INJECTION on channel {channel_o}")
            # 构造信道检查和缓存检查语句（如果存在缓存依赖）
            if behv["need_cache"]:
                cache_sentence = ""
                for ccpn in behv["cache_channel_pattern_needed"]:
                    cache_sentence += f"is_{replace_non_alphanum(ccpn[0])}_{ccpn[1]}_cached && "
                behavior_codes.append(f":: atomic {{ {cache_sentence}nfull({channel_o}) ->")
            else:
                behavior_codes.append(f":: atomic {{ nfull({channel_o}) ->")
            # # 构造信道缓存检查语句（如果存在缓存依赖）
            # if behv["need_cache"]:
            #     cache_sentence = ""
            #     for ccpn in behv["cache_channel_pattern_needed"]:
            #         cache_sentence += f"is_{replace_non_alphanum(ccpn[0])}_{ccpn[1]}_cached && "
            #     cache_sentence = cache_sentence[:-4]
            #     behavior_codes.append(f":: atomic {{ {cache_sentence} ->")
            # else:
            #     behavior_codes.append(f":: atomic {{ skip ->")
            # 构造赋值和发送语句
            # 如果被依赖缓存：就直接对缓存变量赋值并发送，更新缓存状态变量
            if behv["is_referred"]:
                for fieldname in assigner:
                    value = assigner[fieldname]
                    if value[0] == "basic":
                        behavior_codes.append(f"\t{channel}_{fieldname}_{pattern}CACHE = {value[1]};")
                    elif value[0] == "one of":
                        behavior_codes.append(f"\tif")
                        for val in value[1]:
                            behavior_codes.append(f"\t:: {channel}_{fieldname}_{pattern}CACHE = {val};")
                        behavior_codes.append(f"\tfi;")
                    elif value[0] == "range":
                        behavior_codes.append(f"\tselect ({channel}_{fieldname}_{pattern}CACHE : {value[1][0]} .. {value[1][1]});")
                send_sentence = ""
                for field in channels[channel]:
                    send_sentence += f"{channel}_{field[0]}_{pattern}CACHE, "
                send_sentence = send_sentence[:-2]
                behavior_codes.append(f"\t{channel_o} ! {send_sentence};")
                behavior_codes.append(f"\tis_{channel}_{pattern}_cached = true;")
            # 如果不被依赖缓存：就对发送变量赋值，并发送发送变量——更新发送变量集合
            else:
                for fieldname in assigner:
                    value = assigner[fieldname]
                    if value[0] == "basic":
                        behavior_codes.append(f"\t{channel}_{fieldname}_send = {value[1]};")
                    elif value[0] == "one of":
                        behavior_codes.append(f"\tif")
                        for val in value[1]:
                            behavior_codes.append(f"\t:: {channel}_{fieldname}_send = {val};")
                        behavior_codes.append(f"\tfi;")
                    elif value[0] == "range":
                        behavior_codes.append(f"\tselect ({channel}_{fieldname}_send : {value[1][0]} .. {value[1][1]});")
                    send_variables[f"{channel}_{fieldname}_send"] = dict(channels[channel])[fieldname]
                send_sentence = ""
                for field in channels[channel]:
                    send_sentence += f"{channel}_{field[0]}_send, "
                    send_variables[f"{channel}_{field[0]}_send"] = field[1]
                send_sentence = send_sentence[:-2]
                behavior_codes.append(f"\t{channel_o} ! {send_sentence};")
        behavior_codes.append("   }")
    if needs_end:
        behavior_codes.append(":: break;")
        behavior_codes.append(":: goto AttackEnd;")
    behavior_codes.append("od;")
    if needs_end:
        behavior_codes.append("if")
        behavior_codes.append(":: timeout -> goto AttackStart;")
        behavior_codes.append("fi;")
        behavior_codes.append("AttackEnd:")
        behavior_codes.append(f"is_{attacker_name}_end = true;")

    # 生成变量声明代码
    declaration_codes = []
    declaration_codes.append("// Auto-generated Promela Code for attacker.")
    declaration_codes.append("// Variable Declarations")
    declaration_codes.append("skip;")
    var_by_type = {}
    for varname in recv_variables:
        vartype = recv_variables[varname]
        if vartype not in var_by_type:
            var_by_type[vartype] = []
        var_by_type[vartype].append(varname)
    for varname in send_variables:
        vartype = send_variables[varname]
        if vartype not in var_by_type:
            var_by_type[vartype] = []
        var_by_type[vartype].append(varname)
    for channel_pattern in all_cache_channel_pattern_needed:
        channel = replace_non_alphanum(channel_pattern[0])
        pattern = channel_pattern[1]
        for field in channels[channel]:
            varname = f"{channel}_{field[0]}_{pattern}CACHE"
            vartype = field[1]
            if vartype not in var_by_type:
                var_by_type[vartype] = []
            var_by_type[vartype].append(varname)
    
    for vartype in var_by_type:
        declaration_codes.append(f"{vartype} " + ", ".join(var_by_type[vartype]) + ";")
    for channel_pattern in all_cache_channel_pattern_needed:
        channel = replace_non_alphanum(channel_pattern[0])
        pattern = channel_pattern[1]
        declaration_codes.append(f"bool is_{channel}_{pattern}_cached = false;")
    
    attacker_codes = ["\t" + line for line in declaration_codes] + [""] + ["\t" + line for line in behavior_codes]
    # 如果攻击者未包含在环境模型中，则直接生成一个新的攻击者进程
    if not isContainedInSenario:
        attacker_codes = ["", f"active proctype {attackerConfigFile.split('/')[-1].split('.')[0]}() {{"] + attacker_codes + ["}"]
    return attacker_codes