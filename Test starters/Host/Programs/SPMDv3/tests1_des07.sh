#!/bin/bash


echo SPMDv3_1
timeout -s 9 43200s time mpirun --timeout 43200 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des07 -np 1 SPMDv3 200 400 600 300
sleep 5
echo SPMDv3_2
timeout -s 9 21600s time mpirun --timeout 21600 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des07 -np 2 SPMDv3 200 400 600 300
sleep 5
timeout -s 9 21600s time mpirun --timeout 21600 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des07 -np 2 SPMDv3 200 400 600 300
sleep 5
echo SPMDv3_4
timeout -s 9 10800s time mpirun --timeout 10800 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des07 -np 4 SPMDv3 200 400 600 300
sleep 5
timeout -s 9 10800s time mpirun --timeout 10800 --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile4_des07 -np 4 SPMDv3 200 400 600 300
sleep 5

