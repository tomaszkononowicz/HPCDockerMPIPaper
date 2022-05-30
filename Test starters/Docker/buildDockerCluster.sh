#!/bin/bash
echo "des01"
docker swarm leave --force
docker swarm init --advertise-addr 172.20.83.201
JOIN_WORKER_TOKEN=`docker swarm join-token -q worker`
JOIN_MANAGER_TOKEN=`docker swarm join-token -q manager`

for desId in '09' '18' ;
do
echo "------------des$desId---------------"
timeout 10 ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no 172.20.83.2$desId "docker swarm leave --force; docker swarm join --token $JOIN_MANAGER_TOKEN 172.20.83.201:2377"
done

for desId in '02' '03' '04' '05' '06' '07' '08' '10' '11' '12' '13' '14' '15' '16' '17' ;
do
echo "------------des$desId---------------"
timeout 10 ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no 172.20.83.2$desId "docker swarm leave --force; docker swarm join --token $JOIN_WORKER_TOKEN 172.20.83.201:2377"
done


docker node ls
