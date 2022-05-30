#!/bin/sh



echo SPMDv3_O3_native_128
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3_native 200 400 600 300
sleep 5
echo SPMDv3_O3_native_256
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3_native 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3_native 200 400 600 300
sleep 5



echo SPMDv3_O3_128
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O3 200 400 600 300
sleep 5
echo SPMDv3_O3_256
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O3 200 400 600 300
sleep 5



echo SPMDv3_O2_128
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3_O2 200 400 600 300
sleep 5
echo SPMDv3_O2_256
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O2 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3_O2 200 400 600 300
sleep 5





echo SPMDv3_128
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile128 -np 128 SPMDv3 200 400 600 300
sleep 5
echo SPMDv3_256
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3 200 400 600 300
sleep 5
time mpirun --mca btl_tcp_if_include eth0 -hostfile ../hostfile256 -np 256 SPMDv3 200 400 600 300
sleep 5
