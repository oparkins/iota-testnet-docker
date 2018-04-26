FROM ubuntu:latest


RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN apt-get upgrade -y

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

RUN apt-get install git maven wget libasound2 oracle-java8-installer -y

RUN mkdir /iota

RUN cd /iota && git clone https://github.com/schierlm/private-iota-testnet
RUN cd /iota/private-iota-testnet && mvn package

ADD . /
RUN chmod +x ./run_coordinator.sh

CMD ["./run_coordinator.sh"]
