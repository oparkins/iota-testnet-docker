FROM ubuntu:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get update
RUN apt-get install git maven openjdk-8-jdk -y

RUN mkdir -p /iota
RUN cd /iota && git clone https://github.com/iotaledger/iri/

RUN mkdir -p /iota/tmp
ADD Snapshot.java Snapshot.txt /iota/tmp/

RUN rm /iota/iri/src/main/java/com/iota/iri/Snapshot.java
RUN mv /iota/tmp/Snapshot.java /iota/iri/src/main/java/com/iota/iri/Snapshot.java

RUN rm /iota/iri/src/main/resources/Snapshot.txt
RUN mv /iota/tmp/Snapshot.txt /iota/iri/src/main/resources/Snapshot.txt

RUN rm -r /iota/tmp

RUN cd /iota/iri/ && mvn clean compile && mvn package

WORKDIR /iota/iri
ADD . /iota/iri
RUN chmod +x ./execute_iri.sh

CMD ["./execute_iri.sh"]
