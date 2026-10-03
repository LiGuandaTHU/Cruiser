import argparse
import sys
import os

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Cruiser: Automated Network Protocol Vulnerability Detection Based on Model Checking.")
    parser.add_argument("--mode", choices=["AS", "BI"], required=True, help="Operation Mode: 'AS' for Attack Synthesis, 'BI' for Behavior Introspection.")
    parser.add_argument("--outfd", required=True, help="Relative path to the folder where all the output files will be stored.")
    parser.add_argument("--number", type = int, default=1, help="Number of counterexamples to be generated.")

    parser.add_argument("--env", help="Relative path to the .pml file of the basic network environment. (Only MUST be provided in AS mode)")
    parser.add_argument("--attcfgs", help="Relative path to the .yaml files which configure the attackers. (Only MUST be provided in AS mode)", action="extend", nargs="+")

    parser.add_argument("--fsm", help="Relative path to the .dot file, a Mealy FSM describing the protocol state transition logic. (Only MUST be provided in BI mode)")
    parser.add_argument("--dfa", help="Relative path to the .dot file, a DFA describing the pattern of unexpected message exchange sequences. (Only COULD be provided in BI mode)")

    parser.add_argument('--phi', help='Relative path to the .pml file of the LTL properties to be checked.')
    args = parser.parse_args()

    if args.mode == "AS":
        if not args.env or not args.attcfgs:
            parser.error("In AS mode, --env and --attcfgs must be provided.")
            sys.exit(1)
        cmd = f"python AttackSynthesizer.py --outfd {args.outfd} --number {args.number} --env {args.env} --attcfgs {' '.join(args.attcfgs)} {'--phi ' + args.phi if args.phi else ''}"
        os.system(cmd)
    else:
        if not args.fsm or (not args.dfa and not args.phi):
            parser.error("In BI mode, --fsm must be provided, and at least one of --dfa or --phi must be provided.")
            sys.exit(1)
        cmd = f"python BehaviorIntrospector.py --outfd {args.outfd} --number {args.number} --fsm {args.fsm} {'--dfa ' + args.dfa if args.dfa else ''} {'--phi ' + args.phi if args.phi else ''}"
        os.system(cmd)