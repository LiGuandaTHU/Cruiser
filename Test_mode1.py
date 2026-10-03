import os
 
# Test TCP
def test_tcp_end():
    cmd = "cat ./Examples/TCP_mode1/attacker_end.yaml > ./Examples/TCP_mode1/attacker.yaml"
    os.system(cmd)
    for i in range(1, 5):
        outfd = f"./Examples/TCP_mode1/Result/tcp_end_phi{i}"
        phifile = f"./Examples/TCP_mode1/phi{i}.pml"
        cmd = f"python3 Cruiser.py --mode AS --outfd {outfd} --number 1 --env ./Examples/TCP_mode1/TCP.pml --attcfgs ./Examples/TCP_mode1/attacker.yaml --phi {phifile}"
        os.system(cmd)

def test_tcp_noend():
    cmd = "cat ./Examples/TCP_mode1/attacker_noend.yaml > ./Examples/TCP_mode1/attacker.yaml"
    os.system(cmd)
    for i in range(1, 5):
        outfd = f"./Examples/TCP_mode1/Result/tcp_noend_phi{i}"
        phifile = f"./Examples/TCP_mode1/phi{i}.pml"
        cmd = f"python3 Cruiser.py --mode AS --outfd {outfd} --number 1 --env ./Examples/TCP_mode1/TCP.pml --attcfgs ./Examples/TCP_mode1/attacker.yaml --phi {phifile}"
        os.system(cmd)

# Test DCCP
def test_dccp_end():
    cmd = "cat ./Examples/DCCP_mode1/attacker_end.yaml > ./Examples/DCCP_mode1/attacker.yaml"
    os.system(cmd)
    for i in range(1, 5):
        outfd = f"./Examples/DCCP_mode1/Result/dccp_end_phi{i}"
        phifile = f"./Examples/DCCP_mode1/phi{i}.pml"
        cmd = f"python3 Cruiser.py --mode AS --outfd {outfd} --number 1 --env ./Examples/DCCP_mode1/DCCP.pml --attcfgs ./Examples/DCCP_mode1/attacker.yaml --phi {phifile}"
        os.system(cmd)

def test_dccp_noend():
    cmd = "cat ./Examples/DCCP_mode1/attacker_noend.yaml > ./Examples/DCCP_mode1/attacker.yaml"
    os.system(cmd)
    for i in range(1, 5):
        outfd = f"./Examples/DCCP_mode1/Result/dccp_noend_phi{i}"
        phifile = f"./Examples/DCCP_mode1/phi{i}.pml"
        cmd = f"python3 Cruiser.py --mode AS --outfd {outfd} --number 1 --env ./Examples/DCCP_mode1/DCCP.pml --attcfgs ./Examples/DCCP_mode1/attacker.yaml --phi {phifile}"
        os.system(cmd)

# Test SAVI RFC
def test_savi_rfc():
    for tag in ["end", "noend"]:
        # Control_attack
        cmd = f"cat ./Examples/SAVI_mode1/attacker_control_{tag}.yaml > ./Examples/SAVI_mode1/attacker1.yaml"
        os.system(cmd)
        for i in [1, 2]:
            outfd = f"./Examples/SAVI_mode1/Result_RFC/RFC_control_{tag}_phi{i}"
            phifile = f"./Examples/SAVI_mode1/phi{i}.pml"
            cmd = f"python3 Cruiser.py --mode AS --outfd {outfd} --number 1 --env ./Examples/SAVI_mode1/RFC.pml --attcfgs ./Examples/SAVI_mode1/attacker1.yaml --phi {phifile}"
            os.system(cmd)
        # DADNS_attack
        cmd = f"cat ./Examples/SAVI_mode1/attacker_dadns_{tag}.yaml > ./Examples/SAVI_mode1/attacker1.yaml"
        os.system(cmd)
        for i in [1, 2]:
            outfd = f"./Examples/SAVI_mode1/Result_RFC/RFC_dadns_{tag}_phi{i}"
            phifile = f"./Examples/SAVI_mode1/phi{i}.pml"
            cmd = f"python3 Cruiser.py --mode AS --outfd {outfd} --number 1 --env ./Examples/SAVI_mode1/RFC.pml --attcfgs ./Examples/SAVI_mode1/attacker1.yaml --phi {phifile}"
            os.system(cmd)
        # Ping_attack
        cmd = f"cat ./Examples/SAVI_mode1/attacker_ping_{tag}.yaml > ./Examples/SAVI_mode1/attacker1.yaml"
        os.system(cmd)
        outfd = f"./Examples/SAVI_mode1/Result_RFC/RFC_ping_{tag}_phi3"
        phifile = f"./Examples/SAVI_mode1/phi3.pml"
        cmd = f"python3 Cruiser.py --mode AS --outfd {outfd} --number 1 --env ./Examples/SAVI_mode1/RFC.pml --attcfgs ./Examples/SAVI_mode1/attacker1.yaml --phi {phifile}"
        os.system(cmd)

# Test SAVI Weak
def test_savi_weak():
    for tag in ["end", "noend"]:
        # Control_attack
        cmd = f"cat ./Examples/SAVI_mode1/attacker_control_{tag}.yaml > ./Examples/SAVI_mode1/attacker1.yaml"
        os.system(cmd)
        for i in [1, 2]:
            outfd = f"./Examples/SAVI_mode1/Result_Weak/Weak_control_{tag}_phi{i}"
            phifile = f"./Examples/SAVI_mode1/phi{i}.pml"
            cmd = f"python3 Cruiser.py --mode AS --outfd {outfd} --number 1 --env ./Examples/SAVI_mode1/Weak.pml --attcfgs ./Examples/SAVI_mode1/attacker1.yaml --phi {phifile}"
            os.system(cmd)
        # DADNS_attack
        cmd = f"cat ./Examples/SAVI_mode1/attacker_dadns_{tag}.yaml > ./Examples/SAVI_mode1/attacker1.yaml"
        os.system(cmd)
        for i in [1, 2]:
            outfd = f"./Examples/SAVI_mode1/Result_Weak/Weak_dadns_{tag}_phi{i}"
            phifile = f"./Examples/SAVI_mode1/phi{i}.pml"
            cmd = f"python3 Cruiser.py --mode AS --outfd {outfd} --number 1 --env ./Examples/SAVI_mode1/Weak.pml --attcfgs ./Examples/SAVI_mode1/attacker1.yaml --phi {phifile}"
            os.system(cmd)
        # Ping_attack
        cmd = f"cat ./Examples/SAVI_mode1/attacker_ping_{tag}.yaml > ./Examples/SAVI_mode1/attacker1.yaml"
        os.system(cmd)
        outfd = f"./Examples/SAVI_mode1/Result_Weak/Weak_ping_{tag}_phi3"
        phifile = f"./Examples/SAVI_mode1/phi3.pml"
        cmd = f"python3 Cruiser.py --mode AS --outfd {outfd} --number 1 --env ./Examples/SAVI_mode1/Weak.pml --attcfgs ./Examples/SAVI_mode1/attacker1.yaml --phi {phifile}"
        os.system(cmd)

# test_tcp_end()
# test_tcp_noend()
# test_dccp_end()
# test_dccp_noend()     

# test_savi_rfc()
test_savi_weak()