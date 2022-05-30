#!/bin/bash



echo SPMDv4_O3_native_12
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O3_native 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O3_native 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O3_native 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O3_native 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O3_native 200 400 600 300
sleep 5
echo SPMDv4_O3_native_16
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O3_native 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O3_native 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O3_native 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O3_native 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O3_native 200 400 600 300
sleep 5


echo SPMDv4_O3_12
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O3 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O3 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O3 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O3 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O3 200 400 600 300
sleep 5
echo SPMDv4_O3_16
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O3 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O3 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O3 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O3 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O3 200 400 600 300
sleep 5



echo SPMDv4_O2_12
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O2 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O2 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O2 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O2 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4_O2 200 400 600 300
sleep 5
echo SPMDv4_O2_16
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O2 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O2 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O2 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O2 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4_O2 200 400 600 300
sleep 5


echo SPMDv4_12
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4 200 400 600 300
sleep 5
timeout -s 9 5400s time mpirun --timeout 5400 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile12_des11 -np 12 SPMDv4 200 400 600 300
sleep 5
echo SPMDv4_16
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4 200 400 600 300
sleep 5
timeout -s 9 2700s time mpirun --timeout 2700 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile16_des11 -np 16 SPMDv4 200 400 600 300
sleep 5

