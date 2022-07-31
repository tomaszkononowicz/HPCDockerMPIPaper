
 #!/bin/bash

echo NetBenchWithContention_O3_native_128
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile128 -np 128 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile128 -np 128 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile128 -np 128 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile128 -np 128 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile128 -np 128 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile128 -np 128 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile128 -np 128 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile128 -np 128 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile128 -np 128 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile128 -np 128 NetBenchWithContention_O3_native
sleep 5
echo NetBenchWithContention_O3_native_256
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile256 -np 256 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile256 -np 256 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile256 -np 256 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile256 -np 256 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile256 -np 256 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile256 -np 256 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile256 -np 256 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile256 -np 256 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile256 -np 256 NetBenchWithContention_O3_native
sleep 5
mpirun --mca btl_tcp_if_include enp0s31f6 -hostfile ../hostfile256 -np 256 NetBenchWithContention_O3_native
sleep 5
