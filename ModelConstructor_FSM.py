import pygraphviz
import ast
import re

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
        new_label[1] = ["O_" + out for out in new_label[1].split("+")]
        output_set.update(new_label[1])
        edge.attr['label'] = new_label
        graph_fsm[edge[0]].append([new_label[0], edge[1], new_label[1]])
    return fsm, graph_fsm, input_set, output_set

def generateFSMCode(graph_fsm):
    function_lines = []
    function_lines.append("\t\tif")
    for state in graph_fsm:
        function_lines.append("\t\t:: fsm_state == " + state + " ->")
        if graph_fsm[state] == []:
            function_lines.append("\t\t\tgoto Continue;")
            continue
        function_lines.append("\t\t\tif")
        for trans in graph_fsm[state]:
            function_lines.append("\t\t\t:: input == " + trans[0] + " ->")
            function_lines.append("\t\t\t\td_step {\tfsm_state = " + trans[1] + ";")
            for output in trans[2]:
                function_lines.append("\t\t\t\t\toutput = " + output + ";")
                function_lines.append("\t\t\t\t\tprintf(\"Output: %e\\n\", output);")
            function_lines[-1] += " }"
        function_lines.append("\t\t\t:: else -> goto Continue;")
        function_lines.append("\t\t\tfi;")
    function_lines.append("\t\tfi;")
    return function_lines

def generateInitFunction(input_set, graph_fsm):
    function_lines = []
    function_lines.append("init {")
    function_lines.append("\tfsm_state = s0;")
    function_lines.append("\tdo")
    function_lines.append("\t:: true ->")
    function_lines.append("Continue:")
    function_lines.append("\t\tif")
    for input_msg in input_set:
        function_lines.append(f"\t\t:: input = {input_msg};")
    function_lines.append("\t\tfi;")
    function_lines.append("\t\tprintf(\"Input: %e\\n\", input);")
    function_lines.extend(generateFSMCode(graph_fsm))
    function_lines.append("\t\tprintf(\"FSM State: %e\\n\", fsm_state);")
    function_lines.append("\tod;")
    function_lines.append("}")
    return function_lines

def generateHeader(input_set, output_set, fsm_states):
    header_lines = []
    header_lines.append("mtype:MSG = {" + ", ".join(list(input_set)) + ", ")
    header_lines.append("\t" + ", ".join(list(output_set)) + "};")
    header_lines.append("mtype:FSM_STATE = {" + ", ".join(list(fsm_states)) + "};")
    header_lines.append("mtype:MSG input;")
    header_lines.append("mtype:MSG output;")
    header_lines.append("mtype:FSM_STATE fsm_state;")
    return header_lines

def modelGenerator(graph_fsm, input_set, output_set):
    model_lines = ["// This model is generated automatically by ModelConstructor of Cruiser in Mode 2, based on the Protocol FSM. Do not edit manually."]
    model_lines.extend(generateHeader(input_set, output_set, graph_fsm.keys()))
    model_lines.append("")
    model_lines.extend(generateInitFunction(input_set, graph_fsm))
    return model_lines

def constructModel_FSM(protFSMfile: str):
    '''
    Read the protocol FSM from the provided file,
    construct and return the Promela model as a list of strings (lines of the model).
    '''
    fsm, graph_fsm, input_set, output_set = parseFSMfile(protFSMfile)
    introspectionModel = modelGenerator(graph_fsm, input_set, output_set)
    return introspectionModel

# model = constructModel_FSM("./Examples/SSH_mode2/PFSM/Dropbear-v2014.65.dot")
# with open("./Examples/SSH_mode2/Models/Dropbear_SingleFSM.pml", "w") as f:
#     f.write("\n".join(introspectionModel))
