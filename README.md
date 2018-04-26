# Docker for IOTA Testnet
This project is to make it easier to run an IOTA testnet. This document is currently a work in process. If you need any help, create an issue with the "Questions" label. I always need help making these documents more detailed. At the current moment, if you have a question, it is likely others do as well.

## Why
IOTA does not have an easy, well documented way to run a testnet to experiment with the cryptocurrency. I needed to create a testnet to perform a research project on IOTA. It generated interest in my class so I have decided to publish the files.

## Implementation Description
This project runs 6 full nodes, a coordinator and provides the images for the light wallet. This puts an intense load on the computer system that is running this project. My personal computer will max out on CPU usage (8-core, 2.8 GHZ) and use up to 27 GB of RAM. If you do not have those resources, edit the docker-compose.yml file and remove full nodes.

The project will create an internal docker network called iotatangle_testbed. Then, using the start.sh script inside of iota-wallet folder, you can connect as many wallets to the iota network as you want. 

The full nodes network addresses are listed in the docker-compose.yml file. I typically just connect all the wallets to http://10.23.96.11:14700

## How to use it

### Required Software
- docker
- docker-compose
- lots o' resources

### Running the Containers
Go to the folder that contains the docker-compose.yml file. Then run docker-compose up. 

This will build the images and then run them. Use docker-compose stop or docker-compose down to stop or remove the containers. 
### Editing the Testnet

### Credit
The coordinator is from Michael Schierl private-iota-testnet repository. The coordinator image builds the latest version of his software. His repository is located at https://github.com/schierlm/private-iota-testnet.
