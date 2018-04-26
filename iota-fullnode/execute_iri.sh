#!/bin/bash

###
#   Starts IRI Full Node
###

java -jar target/iri-1.4.2.2.jar -p 14700 -n "udp://10.23.96.11:14700 udp://10.23.96.12:14700 udp://10.23.96.13:14700 udp://10.23.96.14:14700 udp://10.23.96.15:14700 udp://10.23.96.16:14700" --testnet --remote