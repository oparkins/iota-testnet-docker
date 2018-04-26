#!/bin/bash

###
#   Runs the coordinator every minute for each node. 
#   This is required for the nodes to confirm transactions
###

cd /iota/private-iota-testnet
echo "Press [CTRL+C] to stop.."
while :
do
    for address in 11 12 13 14 15 16; do
        java -jar target/iota-testnet-tools-0.1-SNAPSHOT-jar-with-dependencies.jar Coordinator 10.23.96.$address 14700
    done
    sleep 60
done