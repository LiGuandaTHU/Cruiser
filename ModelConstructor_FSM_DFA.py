import pygraphviz

exclu_symbol_in_dfa = '-'
add_symbol_in_dfa = 'U'

empty_response_symbol_in_fsm = 'NO_RESP'

def parseFSMfile(FSMfile: str):
    input_set = set()
    output_set = set()
    
    fsm = pygraphviz.AGraph(FSMfile)
    if "__start0" in fsm.nodes():
        fsm.remove_node("__start0")

    graph_fsm = {}  #{sourcenode: [[input, targetnode, [output1, output2, ...]], ...], ...}
    fsm_nodes = fsm.nodes()

    for node in fsm_nodes:
        graph_fsm[node] = []
    for edge in fsm.edges():
        old_label = edge.attr['label']
        new_label = [x.strip() for x in old_label.split(" / ")]
        new_label[0] = "I_" + new_label[0]
        input_set.add(new_label[0])
        new_label[1] = ["O_" + out.strip() for out in new_label[1].split("+")]
        output_set.update(new_label[1])
        edge.attr['label'] = new_label
        graph_fsm[edge[0]].append([new_label[0], edge[1], new_label[1]])
    if empty_response_symbol_in_fsm:
        output_set.remove(f"O_{empty_response_symbol_in_fsm}")
    return fsm, graph_fsm, input_set, output_set

def parseDFAfile(DFAfile: str, input_set, output_set):
    exmsg_set = set()
    dfa = pygraphviz.AGraph(DFAfile)
    dfa.remove_node("__start0")

    graph_dfa = {}          #{sourcenode: [[message condition, targetnode], ...], ...}
    graph_dfa_sorted = {}
    is_node_totally_excluded = {}   #{sourcenode: bool, ...} Record whether the node already has an "other" transition
    dfa_nodes = dfa.nodes()

    for node in dfa_nodes:
        graph_dfa[node] = []
        graph_dfa_sorted[node] = []
        is_node_totally_excluded[node] = False
    for edge in dfa.edges():
        label = edge.attr['label'].strip()
        if label.startswith("other ") or label == "other":
            is_node_totally_excluded[edge[0]] = True
            graph_dfa_sorted[edge[0]].append([label, edge[1]])
        elif label.startswith("other_"):
            if is_node_totally_excluded[edge[0]]:
                graph_dfa_sorted[edge[0]].insert(-1, [label, edge[1]])
            else:
                graph_dfa_sorted[edge[0]].append([label, edge[1]])
        else:
            graph_dfa_sorted[edge[0]].insert(0, [label, edge[1]])

    for node in dfa_nodes:
        contained_msgs = set()
        edges = graph_dfa_sorted[node]
        for edge in edges:
            label = edge[0]
            msgs = set()
            if not label.startswith("other"):
                msgs = set([x.strip() for x in label.strip("{} ").split(",") if x.strip()])
            elif label.startswith("other_input"):
                if label == "other_input":
                    msgs = input_set - contained_msgs
                elif label.startswith(f"other_input {add_symbol_in_dfa} "):
                    added_msgs = set([x.strip() for x in label[len(f"other_input {add_symbol_in_dfa} "):].strip("{} ").split(",") if x.strip()])
                    msgs = (input_set - contained_msgs).union(added_msgs)
                elif label.startswith(f"other_input {exclu_symbol_in_dfa} "):
                    excluded_msgs = set([x.strip() for x in label[len(f"other_input {exclu_symbol_in_dfa} "):].strip("{} ").split(",") if x.strip()])
                    msgs = (input_set - contained_msgs) - excluded_msgs
            elif label.startswith("other_output"):
                if label == "other_output":
                    msgs = output_set - contained_msgs
                elif label.startswith(f"other_output {add_symbol_in_dfa} "):
                    added_msgs = set([x.strip() for x in label[len(f"other_output {add_symbol_in_dfa} "):].strip("{} ").split(",") if x.strip()])
                    msgs = (output_set - contained_msgs).union(added_msgs)
                elif label.startswith(f"other_output {exclu_symbol_in_dfa} "):
                    excluded_msgs = set([x.strip() for x in label[len(f"other_output {exclu_symbol_in_dfa} "):].strip("{} ").split(",") if x.strip()])
                    msgs = (output_set - contained_msgs) - excluded_msgs
            elif label.startswith("other"):
                if label == "other":
                    msgs = (input_set.union(output_set)) - contained_msgs
                elif label.startswith(f"other {add_symbol_in_dfa} "):
                    added_msgs = set([x.strip() for x in label[len(f"other {add_symbol_in_dfa} "):].strip("{} ").split(",") if x.strip()])
                    msgs = ((input_set.union(output_set)) - contained_msgs).union(added_msgs)
                elif label.startswith(f"other {exclu_symbol_in_dfa} "):
                    excluded_msgs = set([x.strip() for x in label[len(f"other {exclu_symbol_in_dfa} "):].strip("{} ").split(",") if x.strip()])
                    msgs = ((input_set.union(output_set)) - contained_msgs) - excluded_msgs
            contained_msgs.update(msgs)
            exmsg_set.update(msgs - input_set - output_set)
            graph_dfa[node].append([msgs, edge[1]])
    return dfa, graph_dfa, exmsg_set

def generateFSMCode(graph_fsm):
    function_lines = []
    function_lines.append("\t\tif")
    for state in graph_fsm:
        function_lines.append("\t\t:: fsm_state == " + state + " ->")
        if graph_fsm[state] == []:
            function_lines.append("\t\t\tgoto Restart;")
            continue
        function_lines.append("\t\t\tif")
        for trans in graph_fsm[state]:
            function_lines.append("\t\t\t:: input == " + trans[0] + " ->")
            function_lines.append("\t\t\t\tfsm_state = " + trans[1] + ";")
            if len(trans[2]) == 1 and trans[2][0] == f"O_{empty_response_symbol_in_fsm}":
                function_lines.append("\t\t\t\tgoto Continue;")
            else:
                for i, output in enumerate(trans[2]):
                    if i != 0:
                        function_lines.append("\t\t\t\tprintf(\"Output: %e\\n\", output);")
                        function_lines.append("\t\t\t\tDFA_ProcessMessage(output);")
                        function_lines.append("\t\t\t\tprintf(\"DFA State: %e\\n\", dfa_state);")
                    function_lines.append("\t\t\t\toutput = " + output + ";")
        function_lines.append("\t\t\t:: else -> goto Continue;")
        function_lines.append("\t\t\tfi;")
    function_lines.append("\t\tfi;")
    return function_lines

def generateDFAFunction(graph_dfa):
    function_lines = []
    function_lines.append("inline DFA_ProcessMessage(msg) {")
    function_lines.append("d_step {")
    function_lines.append("\tdealt = false;")
    function_lines.append("\tif")
    for state in graph_dfa:
        function_lines.append("\t:: dfa_state == " + state + " ->")
        if graph_dfa[state] == []:
            function_lines.append("\t\tskip;")
            continue
        function_lines.append("\t\tif")
        for trans in graph_dfa[state]:
            condition = trans[0]
            dst = trans[1]
            if len(condition) != 0:
                promela_condition = " || ".join(["msg == " + msg for msg in condition])
                function_lines.append("\t\t:: " + promela_condition + " ->")
                function_lines.append("\t\t\tdfa_state = " + dst + ";")
                function_lines.append("\t\t\tdealt = true;")
        function_lines.append("\t\t:: else -> skip;")
        function_lines.append("\t\tfi;")
    function_lines.append("\tfi;")
    function_lines.append("}")
    function_lines.append("\tif")
    function_lines.append("\t:: dealt == false -> goto Restart;")
    function_lines.append("\t:: else -> skip;")
    function_lines.append("\tfi;")
    function_lines.append("}")
    return function_lines

def generateInitFunction(input_set, graph_fsm):
    function_lines = []
    function_lines.append("init {")
    function_lines.append("Restart:")
    function_lines.append("\tfsm_state = s0;")
    function_lines.append("\tdfa_state = start;")
    function_lines.append("\tdealt = false;")
    function_lines.append("\tdo")
    function_lines.append("\t:: true ->")
    function_lines.append("Continue:")
    function_lines.append("\t\tif")
    for input_msg in input_set:
        function_lines.append(f"\t\t:: input = {input_msg};")
    function_lines.append("\t\tfi;")
    function_lines.append("\t\tprintf(\"Input: %e\\n\", input);")
    function_lines.append("\t\tDFA_ProcessMessage(input);")
    function_lines.append("\t\tprintf(\"DFA State: %e\\n\", dfa_state);")
    function_lines.extend(generateFSMCode(graph_fsm))
    function_lines.append("\t\tprintf(\"FSM State: %e\\n\", fsm_state);")
    function_lines.append("\t\tprintf(\"Output: %e\\n\\n\", output);")
    function_lines.append("\t\tDFA_ProcessMessage(output);")
    function_lines.append("\t\tprintf(\"DFA State: %e\\n\\n\", dfa_state);")
    function_lines.append("\tod;")
    function_lines.append("}")
    return function_lines

def generateHeader(input_set, output_set, exmsg_set, fsm_states, dfa_states):
    header_lines = []
    header_lines.append("mtype:MSG = {" + ", ".join(list(input_set)) + ", ")
    if exmsg_set:
        header_lines.append("\t" + ", ".join(list(exmsg_set)) + ", ")
    header_lines.append("\t" + ", ".join(list(output_set)) + "};")
    header_lines.append("mtype:FSM_STATE = {" + ", ".join(list(fsm_states)) + "};")
    header_lines.append("mtype:DFA_STATE = {" + ", ".join(list(dfa_states)) + "};")
    header_lines.append("mtype:MSG input;")
    header_lines.append("mtype:MSG output;")
    header_lines.append("mtype:FSM_STATE fsm_state;")
    header_lines.append("mtype:DFA_STATE dfa_state;")
    header_lines.append("bool dealt;")
    return header_lines

def modelGenerator(graph_fsm, graph_dfa, input_set, output_set, exmsg_set):
    model_lines = ["// This model is generated automatically by ModelConstructor of Cruiser in Mode 2, based on the Protocol FSM and Unexpected Message Sequence DFA. Do not edit manually."]
    model_lines.extend(generateHeader(input_set, output_set, exmsg_set, graph_fsm.keys(), graph_dfa.keys()))
    model_lines.append("")
    model_lines.extend(generateDFAFunction(graph_dfa))
    model_lines.append("")
    model_lines.extend(generateInitFunction(input_set, graph_fsm))
    model_lines.append("ltl no_bug { [] (dfa_state != bug) }")
    return model_lines

def constructModel_FSM_DFA(protFSMfile: str, propWPfile: str):
    '''
    Read the protocol FSM and wrong message pattern DFA from the provided files,
    construct and return the Promela model as a list of strings (lines of the model).
    '''
    fsm, graph_fsm, input_set, output_set = parseFSMfile(protFSMfile)
    dfa, graph_dfa, exmsg_set = parseDFAfile(propWPfile, input_set, output_set)
    introspectionModel = modelGenerator(graph_fsm, graph_dfa, input_set, output_set, exmsg_set)
    return introspectionModel

# model = constructModel_FSM_DFA("./Examples/SSH_mode2/PFSM/Dropbear-v2014.65.dot", "./Examples/SSH_mode2/BPDFA/rekey_failure_after_authentication.dot")
# with open("./test.pml", "w") as f:
#     f.write("\n".join(introspectionModel))