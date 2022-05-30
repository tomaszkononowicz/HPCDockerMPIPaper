#!/bin/bash



echo SPMDv4_O3_native_1
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 1 SPMDv4_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 1 SPMDv4_O3_native 200 400 600 300
sleep 5
echo SPMDv4_O3_native_2
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 2 SPMDv4_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 2 SPMDv4_O3_native 200 400 600 300
sleep 5
echo SPMDv4_O3_native_4
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 4 SPMDv4_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 4 SPMDv4_O3_native 200 400 600 300
sleep 5


echo SPMDv4_O3_1
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 1 SPMDv4_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 1 SPMDv4_O3 200 400 600 300
sleep 5
echo SPMDv4_O3_2
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 2 SPMDv4_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 2 SPMDv4_O3 200 400 600 300
sleep 5
echo SPMDv4_O3_4
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 4 SPMDv4_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 4 SPMDv4_O3 200 400 600 300
sleep 5


echo SPMDv4_O2_1
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 1 SPMDv4_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 1 SPMDv4_O2 200 400 600 300
sleep 5
echo SPMDv4_O2_2
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 2 SPMDv4_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 2 SPMDv4_O2 200 400 600 300
sleep 5
echo SPMDv4_O2_4
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 4 SPMDv4_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 4 SPMDv4_O2 200 400 600 300
sleep 5




echo SPMDv4_1
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 1 SPMDv4 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 1 SPMDv4 200 400 600 300
sleep 5
echo SPMDv4_2
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 2 SPMDv4 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 2 SPMDv4 200 400 600 300
sleep 5
echo SPMDv4_4
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 4 SPMDv4 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des18 -np 4 SPMDv4 200 400 600 300
sleep 5

