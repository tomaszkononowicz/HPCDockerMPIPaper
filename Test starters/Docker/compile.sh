#!/bin/bash

ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des01.kask 'echo "01" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des02.kask 'echo "02" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des03.kask 'echo "03" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des04.kask 'echo "04" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des05.kask 'echo "05" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des06.kask 'echo "06" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des07.kask 'echo "07" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des08.kask 'echo "08" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des09.kask 'echo "09" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des10.kask 'echo "10" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des11.kask 'echo "11" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des12.kask 'echo "12" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des13.kask 'echo "13" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des14.kask 'echo "14" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des15.kask 'echo "15" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des16.kask 'echo "16" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des17.kask 'echo "17" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p 3333 -i ./id_rsa apiaryuser@des18.kask 'echo "18" && cd Programs && cd SPMD && ./compile.sh && cd ../DAC && ./compile.sh && cd ../MasterSlave && ./compile.sh && cd ../SPMDv2 && ./compile.sh && cd ../SPMDv3 && ./compile.sh && cd ../SPMDv4 && ./compile.sh' 
