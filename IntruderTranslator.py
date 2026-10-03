def isRange(str):
    return str.startswith("[") and str.endswith("]")

def isSet(str):
    return str.startswith("{") and str.endswith("}")

def tempChanName(chanName):
    return chanName.replace('[', '_').replace(']', '_')

def attackFlagSentence(isIntrusion):
    if isIntrusion:
        return "is_intrusion = true;"
    else:
        return "is_intrusion = false;"
    
def inputFilterCond(tempInChan, inputs):
    inputConds = []
    for var in inputs:
        if isRange(inputs[var]):
            lbound = inputs[var][1:-1].split(",")[0].strip()
            rbound = inputs[var][1:-1].split(",")[1].strip()
            inputConds.append("(" + tempInChan + "_recv" + var + " >= " + lbound + ") && (" + tempInChan + "_recv" + var + " <= " + rbound + ")")
        elif isSet(inputs[var]):
            valList = [x.strip() for x in inputs[var][1:-1].split()]
            valCond = "("
            for val in valList:
                valCond += tempInChan + "_recv" + var + " == " + val + " || "
            valCond = valCond[:-4] + ")"
            inputConds.append(valCond)
        else:
            inputConds.append("(" + tempInChan + "_recv" + var + " == " + inputs[var] + ")")
    filterCond = ""
    for cond in inputConds:
        filterCond += cond + " && "
    return filterCond[:-4]

def outputSentences(outChan, outputs, sendSequence, numTab):
    outputSentences = []
    temp = tempChanName(outChan)
    for var in outputs:
        if isRange(outputs[var]):
            lbound = outputs[var][1:-1].split(",")[0].strip()
            rbound = outputs[var][1:-1].split(",")[1].strip()
            outputSentences.append("\t" * numTab + "select(" + temp + "_send" + var + " : " + lbound + " .. " + rbound + ");")
        elif isSet(outputs[var]):
            valList = [x.strip() for x in outputs[var][1:-1].split()]
            outputSentences.append("\t" * numTab + "if")
            for val in valList:
                outputSentences.append("\t" * numTab + ":: " + temp + "_send" + var + " = " + val + ";")
            outputSentences.append("\t" * numTab + "fi;")
        else:
            outputSentences.append("\t" * numTab + temp + "_send" + var + " = " + outputs[var] + ";")
    outputSentences.append("\t" * numTab + outChan + " ! " + sendSequence + ";")
    return outputSentences

def parseIntruder(IntruFilePath):
    channels = {}
    actions = []    # actions = [action, action, ...]
    action = []     # action = [pattern, isIntrusion, inputchan, inputs, outputchan, outputs]
    inputs = {}     # inputs = {var: value, var: value, ...}
    outputs = {}    # outputs = {var: value, var: value, ...}
    inChan = outChan = ""

    isChan = True
    pattern = 0
    isIntrusion = True
    isIn = isOut = hasIn = hasOut = isAny = False

    with open(IntruFilePath, "r") as IntruFile:
        for line in IntruFile:
            line = line.strip()
            if line == '':
                continue

            if line.startswith("chan:"):
                isChan = True
                continue
            if line.startswith("Intruder:"):
                isChan = False
                continue
            if line.startswith("pattern ") and not isChan:
                pattern = int(line.split()[1][:-1])
                isIn = isOut = hasIn = hasOut = isAny = False
                isIntrusion = True
                inputs = {}
                outputs = {}
                continue
            if line.startswith("isIntrusion:"):
                isIntrusion = [x.strip() for x in line.split(":")][1] == "TRUE"
                continue
            if line.startswith("in "):
                inChan = line.split()[1]
                isIn = hasIn = True
                continue
            if line == 'overin':
                isIn = False
                continue
            if line.startswith("out "):
                outChan = line.split()[1]
                isOut = hasOut = True
                continue
            if line == 'overout':
                isOut = False
                continue
            if line == "overpattern":
                action = [pattern, isIntrusion]
                if hasIn:
                    action.append(inChan)
                    if isAny:
                        action.append("ANY")
                    else:
                        action.append(inputs)
                else:
                    action.extend(["NONE", "NONE"])
                if hasOut:
                    action.extend([outChan, outputs])
                else:
                    action.extend(["NONE", "NONE"])
                actions.append(action)

            if isChan:
                chanDef = [x.strip() for x in line.split("=")]
                chanDef[1] = [x.split() for x in chanDef[1][1:-1].split(",")]
                channels[chanDef[0]] = chanDef[1]
                continue
            if line == "ANY" and isIn and not isOut:
                isAny = True
                continue
            param = [x.strip() for x in line.split(":")]
            if isIn and not isOut:
                inputs[param[0]] = param[1]
            elif isOut and not isIn:
                outputs[param[0]] = param[1]
        
    return channels, actions

def IntruderTranslator(path_to_intruder, intrusion_point):
    channels, actions = parseIntruder(path_to_intruder)

    promela = ["// This part is generated by IntruderTranslator", "skip;"]
    for chanName in channels:
        name = tempChanName(chanName)
        vars = channels[chanName]
        print(vars)
        for var in vars:
            promela.append(var[0] + " " + name + "_recv" + var[1] + ", " + name + "_send" + var[1] + ";")
    promela.append("bool is_intrusion;")

    promela.extend([intrusion_point + ":", "skip;", "atomic {"])
    promela.append("if")

    for action in actions:
        pattern = action[0]
        isIntrusion = action[1]
        inChan = action[2]
        inputs = action[3]
        outChan = action[4]
        outputs = action[5]

        tempInChan = tempChanName(inChan)
        tempOutChan = tempChanName(outChan)

        recvSequence = ""
        if inChan != "NONE":
            for var in channels[inChan]:
                recvSequence += tempInChan + "_recv" + var[1] + ", "
            recvSequence = recvSequence[:-2]
        sendSequence = ""
        if outChan != "NONE":
            for var in channels[outChan]:
                sendSequence += tempOutChan + "_send" + var[1] + ", "
            sendSequence = sendSequence[:-2]

        # 模式1：截获消息 可能发送信息
        if pattern == 1:
            promela.append(":: " + inChan + " ? <" + recvSequence + "> ->")
            promela.append("\t" + attackFlagSentence(isIntrusion))
            if inputs == "ANY" and outChan == "NONE":
                promela.append("\t" + inChan + " ? " + recvSequence + ";")
            elif inputs == "ANY" and outChan != "NONE":
                promela.append("\t" + inChan + " ? " + recvSequence + " ->")
                promela.extend(outputSentences(outChan, outputs, sendSequence, 1))
            elif inputs != "ANY" and outChan == "NONE":
                promela.append("\tif")
                promela.append("\t:: " + inputFilterCond(tempInChan, inputs) + " ->")
                promela.append("\t\t" + inChan + " ? " + recvSequence + ";")
                promela.append("\t:: else -> skip;")
                promela.append("\tfi;")
            elif inputs != "ANY" and outChan != "NONE":
                promela.append("\tif")
                promela.append("\t:: " + inputFilterCond(tempInChan, inputs) + " ->")
                promela.append("\t\t" + inChan + " ? " + recvSequence + ";")
                promela.extend(outputSentences(outChan, outputs, sendSequence, 2))
                promela.append("\t:: else -> skip;")
                promela.append("\tfi;")
        # 模式2：监听并发送信息
        elif pattern == 2:
            if outChan == "NONE":   # 如果监听但不发送消息，则没有实际意义
                continue
            promela.append(":: " + inChan + " ? <" + recvSequence + "> ->")
            promela.append("\t" + attackFlagSentence(isIntrusion))
            if inputs != "ANY":
                promela.append("\tif")
                promela.append("\t:: " + inputFilterCond(tempInChan, inputs) + " ->")
                promela.extend(outputSentences(outChan, outputs, sendSequence, 2))
                promela.append("\t:: else -> skip;")
                promela.append("\tfi;")
            elif inputs == "ANY":
                promela.append(":: " + inChan + " ? <" + recvSequence + "> ->")
                promela.extend(outputSentences(outChan, outputs, sendSequence, 1))
        # 模式3：只发送信息
        elif pattern == 3:
            promela.append(":: skip;")
            promela.append("\t" + attackFlagSentence(isIntrusion))
            promela.extend(outputSentences(outChan, outputs, sendSequence, 1))
        
        promela.append("\tgoto " + intrusion_point + ";")
        
    promela.append("fi;")
    promela.append("}")
    return "\n\t".join(promela).split("\n")