#!/bin/sh



echo SPMDv3_O3_native_8
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include eth0 -hostfile ../hostfile8_node03 -np 8 SPMDv3_O3_native 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include eth0 -hostfile ../hostfile8_node03 -np 8 SPMDv3_O3_native 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include eth0 -hostfile ../hostfile8_node03 -np 8 SPMDv3_O3_native 200 400 600 300
sleep 5

echo SPMDv3_O3_8
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include eth0 -hostfile ../hostfile8_node03 -np 8 SPMDv3_O3 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include eth0 -hostfile ../hostfile8_node03 -np 8 SPMDv3_O3 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include eth0 -hostfile ../hostfile8_node03 -np 8 SPMDv3_O3 200 400 600 300
sleep 5

echo SPMDv3_O2_8
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include eth0 -hostfile ../hostfile8_node03 -np 8 SPMDv3_O2 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include eth0 -hostfile ../hostfile8_node03 -np 8 SPMDv3_O2 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include eth0 -hostfile ../hostfile8_node03 -np 8 SPMDv3_O2 200 400 600 300
sleep 5

echo SPMDv3_8
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include eth0 -hostfile ../hostfile8_node03 -np 8 SPMDv3 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include eth0 -hostfile ../hostfile8_node03 -np 8 SPMDv3 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include eth0 -hostfile ../hostfile8_node03 -np 8 SPMDv3 200 400 600 300
sleep 5


