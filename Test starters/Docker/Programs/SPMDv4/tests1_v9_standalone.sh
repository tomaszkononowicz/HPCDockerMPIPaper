#!/bin/sh

echo SPMDv4_1
time mpirun --mca btl_tcp_if_include eth0 -np 1 SPMDv4 200 400 600 300
sleep 20
