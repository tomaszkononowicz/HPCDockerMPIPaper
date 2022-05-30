#!/bin/sh



echo SPMDv4_O3_native_1
timeout -s 9 43200s time mpirun --timeout 43200 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 1 SPMDv4_O3_native 200 400 600 300
sleep 5
timeout -s 9 43200s time mpirun --timeout 43200 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 1 SPMDv4_O3_native 200 400 600 300
sleep 5
echo SPMDv4_O3_native_2
timeout -s 9 21600s time mpirun --timeout 21600 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 2 SPMDv4_O3_native 200 400 600 300
sleep 5
timeout -s 9 21600s time mpirun --timeout 21600 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 2 SPMDv4_O3_native 200 400 600 300
sleep 5
echo SPMDv4_O3_native_4
timeout -s 9 10800s time mpirun --timeout 10800 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 4 SPMDv4_O3_native 200 400 600 300
sleep 5
timeout -s 9 10800s time mpirun --timeout 10800 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 4 SPMDv4_O3_native 200 400 600 300
sleep 5


echo SPMDv4_O3_1
timeout -s 9 43200s time mpirun --timeout 43200 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 1 SPMDv4_O3 200 400 600 300
sleep 5
timeout -s 9 43200s time mpirun --timeout 43200 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 1 SPMDv4_O3 200 400 600 300
sleep 5
echo SPMDv4_O3_2
timeout -s 9 21600s time mpirun --timeout 21600 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 2 SPMDv4_O3 200 400 600 300
sleep 5
timeout -s 9 21600s time mpirun --timeout 21600 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 2 SPMDv4_O3 200 400 600 300
sleep 5
echo SPMDv4_O3_4
timeout -s 9 10800s time mpirun --timeout 10800 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 4 SPMDv4_O3 200 400 600 300
sleep 5
timeout -s 9 10800s time mpirun --timeout 10800 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 4 SPMDv4_O3 200 400 600 300
sleep 5


echo SPMDv4_O2_1
timeout -s 9 43200s time mpirun --timeout 43200 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 1 SPMDv4_O2 200 400 600 300
sleep 5
timeout -s 9 43200s time mpirun --timeout 43200 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 1 SPMDv4_O2 200 400 600 300
sleep 5
echo SPMDv4_O2_2
timeout -s 9 21600s time mpirun --timeout 21600 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 2 SPMDv4_O2 200 400 600 300
sleep 5
timeout -s 9 21600s time mpirun --timeout 21600 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 2 SPMDv4_O2 200 400 600 300
sleep 5
echo SPMDv4_O2_4
timeout -s 9 10800s time mpirun --timeout 10800 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 4 SPMDv4_O2 200 400 600 300
sleep 5
timeout -s 9 10800s time mpirun --timeout 10800 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 4 SPMDv4_O2 200 400 600 300
sleep 5




echo SPMDv4_1
timeout -s 9 43200s time mpirun --timeout 43200 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 1 SPMDv4 200 400 600 300
sleep 5
timeout -s 9 43200s time mpirun --timeout 43200 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 1 SPMDv4 200 400 600 300
sleep 5
echo SPMDv4_2
timeout -s 9 21600s time mpirun --timeout 21600 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 2 SPMDv4 200 400 600 300
sleep 5
timeout -s 9 21600s time mpirun --timeout 21600 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 2 SPMDv4 200 400 600 300
sleep 5
echo SPMDv4_4
timeout -s 9 10800s time mpirun --timeout 10800 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 4 SPMDv4 200 400 600 300
sleep 5
timeout -s 9 10800s time mpirun --timeout 10800 --mca btl_tcp_if_include eth0 -hostfile ../hostfile4_node04 -np 4 SPMDv4 200 400 600 300
sleep 5

