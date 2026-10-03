import argparse
import os
from openai import OpenAI
import time

from ModelConstructor_FSM import *
from ModelConstructor_FSM_DFA import *

my_api_key = "sk-zvQV3rmeulC3paIEF27e408c50Ed4d6385C959F71f3b4a44"

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Cruiser Mode 2: Behavior Introspection of Protocol State Machines.")
    parser.add_argument("--outfd", help="Relative path to the folder where all the output files will be stored.", required = True)
    parser.add_argument("--number", help="Number of unexpected message exchange sequences to be detected.", type = int, required = True)
    parser.add_argument("--fsm", help="Relative path to the .dot file, a Mealy FSM describing the protocol state transition logic.", required = True)
    parser.add_argument("--dfa", help="Relative path to the .dot file, a DFA describing the pattern of unexpected message exchange sequences.")
    parser.add_argument('--phi', help='Relative path to the .pml file of the LTL properties to be checked.')
    args = parser.parse_args()

    protFSMfile = args.fsm
    propWPfile = args.dfa
    phifile = args.phi
    outputfolder = args.outfd
    trailnum = args.number

    modelname = protFSMfile.split("/")[-1][:-4] + ("_" + propWPfile.split("/")[-1][:-4] if args.dfa else "") + ("_" + phifile.split("/")[-1][:-4] if args.phi else "")
    with open(protFSMfile, "r") as f:
        FSM_file = f.read()
    # Construct the introspection model by combining protocol FSM and unexpected message sequence DFA.
    print("\nPhase1: Model Construction\n")
    print("  Constructing the introspection model...")
    start1 = time.perf_counter()
    model = []
    if args.dfa:
        model = constructModel_FSM_DFA(protFSMfile, propWPfile)
        with open(propWPfile, "r") as f:
            dfa = f.read()
    else:
        model = constructModel_FSM(protFSMfile)
    if args.phi:
        with open(args.phi, "r") as f:
            philines = [x.rstrip() for x in f.read().splitlines()]
            ltl = f.read()
        if philines:
            model.extend(philines)
        else:
            print("Warning: The provided LTL property file is empty.")

    # Save the constructed introspection model to a .pml file.
    if not os.path.exists(outputfolder):
        os.makedirs(outputfolder)
    with open(outputfolder + "/" + modelname + "_introspection.pml", "w") as f:
        f.write("\n".join(model))
    print(f"  >>> Introspection model saved to {outputfolder}/{modelname}_introspection.pml")
    end1 = time.perf_counter()

    # Use Spin to search for unexpected message sequences.
    print("\nPhase2: Behavior Validation with Model Checking\n")
    print("  Compiling the introspection model...")
    start2 = time.perf_counter()
    os.chdir(outputfolder)
    cmd = "spin -a " + modelname + "_introspection.pml"
    os.system(cmd)
    cmd = "gcc -O2 -DBFS -o pan pan.c"
    os.system(cmd)
    end2 = time.perf_counter()

    print("  Searching for unexpected message sequences and protocol state transitions...")
    start3 = time.perf_counter()
    cmd = "./pan -e -E -c" + str(trailnum) + " " + modelname + "_introspection.pml > " + modelname + "_IntrospectionSearch.log"
    os.system(cmd)
    print("  >>> Execution log of Spin is stored in " + outputfolder + "/" + modelname + "_IntrospectionSearch.log\n")

    num_counterexample = 0
    for i in range(trailnum):
        if os.path.exists("./" + modelname + "_introspection.pml" + str(i + 1) + ".trail"):
            num_counterexample = i + 1
        else:
            break
    if num_counterexample > 0:
        print(f"  >>> Cruiser found {num_counterexample} trails successfully.")
        print("  Extracting core traces...")
        for i in range(num_counterexample):
            cmd = "spin -p -t" + str(i + 1) + " " + modelname + "_introspection.pml"
            trace = os.popen(cmd).readlines()
            trace = [x.strip().replace("\t", " ") for x in trace]
            if not os.path.exists("./Trail" + str(i + 1)):
                os.makedirs("./Trail" + str(i + 1))
            with open("./Trail" + str(i + 1) + "/All Trace.txt", "w") as f:
                f.write("\n".join(trace))

            core_trace = []
            for line in trace:
                if line.startswith("Input:") or line.startswith("Output:") or line.startswith("FSM State:"):
                    core_trace.append(line)
                elif line.startswith("DFA State:"):
                    core_trace.append(" >>> " + line)
            with open("./Trail" + str(i + 1) + "/Core Trace.txt", "w") as f:
                f.write("\n".join(core_trace))
                print("  >>> Trail" + str(i + 1) + " is done. Complete Trace is stored in " + "./Trail" + str(i + 1) + "/All Trace.txt. Core trace is stored in " + "./Trail" + str(i + 1) + "/Core Trace.txt.")

            '''
            print("\nPhase3: Trace Explanation and Analysis of Possible Protocol Vulnerabilities\n")
            client = OpenAI(api_key=my_api_key, base_url="https://openkey.cloud/v1")
            protocol_name = "SSH"
            trace_content = "\n".join(core_trace)
            prompt_template = """You are a cybersecurity expert specializing in network protocol security analysis and formal verification with protocol state machines.
            # Background and Material
            - You are provided with a .dot file describing the state machine model of the network protocol named {protocol_name}, derived from one implementation of the protocol.
                The model is as follows:
            ```
            {FSM_file}
            ```
            - You are provided with properties describing patterns of message exchange or protocol state transitions that the user cared about. 
                {property_content}
            - You are also provided with a core trace extracted from the model checking result, a counterexample. The core trace captures an I/O message sequence along with protocol state transitions.
                The core trace is as follows:
                ```
                {trace_content}
                ```
            # Task            
            Analyze and interpret them carefully. Identify and explain the vulnerabilities in the protocol logic detected. Output a PROTOCOL VULNERABILITY DETECTION REPORT.
            # Requirements
            - MUST use step-by-step reasoning (Chain-of-Thought), but only output the final answer in the required structured format.
            - MUST provide your answer in the following structured markdown format:
            ```
            Protocol Vulnerability Analysis Report -- by LLM
            # Semantic interpretation of the formal model and property
            - [Your analysis here, explaining the meaning of message type, the protocol logic, and the property being checked.]
            # Semantic interpretation of the core trace
            - [Your analysis here, explaining the core trace, focusing on the meaning of the message sequence and protocol state transitions.]
            # Detected potential protocol vulnerabilities
            - [Your analysis here, explaining what and where the vulnerabilities are.]
            # Mitigation suggestions
            - [Your analysis here, providing suggestions on how to fix or mitigate the detected vulnerabilities in the protocol design or implementation.]
            ```
            """
            LTL_property_template = """
                The LTL property that the protocol is expected to satisfy provided by the user, is as follows:
                ```
                {LTL_property}
                ```
            """
            DFA_property_template = """
                A .dot file of a DFA describing a pattern of unexpected message exchange sequences that the user wants to detect, is as follows:
                ```
                {DFA_file}
                ```
            """
            property_content = ""
            if args.phi:
                LTL_property = LTL_property_template.format(LTL_property=ltl)
                property_content += LTL_property
            if args.dfa:
                DFA_property = DFA_property_template.format(DFA_file=dfa)
                property_content += DFA_property
            prompt = prompt_template.format(protocol_name=protocol_name, FSM_file=FSM_file, trace_content=trace_content, property_content=property_content)
            response = client.chat.completions.create(
                model="gpt-5",
                messages=[
                    {"role": "system", "content": "You are a helpful reasoning assistant."},
                    {"role": "user", "content": prompt}
                ]
            )
            with open("./Trail" + str(i + 1) + "/Report.md", "w") as f:
                f.write(response.choices[0].message.content)
            print("  >>> Analysis report for Trail" + str(i + 1) + " is stored in " + "./Trail" + str(i + 1) + "/Report.md.")
            '''
        print("\nJob Finished!\n")
    else:
        print("\nNo protocol logic vulnerabilities found within the protocol state machine based on the given property.")
    end3 = time.perf_counter()

    with open("./timer.txt", "w") as f:
        f.write(f"{end1 - start1} seconds\n")
        f.write(f"{end2 - start2} seconds\n")
        f.write(f"{end3 - start3} seconds\n")
        f.write(f"{len(model)}\n")