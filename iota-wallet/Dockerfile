from ubuntu:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install wget libasound2 openjdk-8-jdk -y

RUN apt-get install -qqy x11-apps

RUN wget -O iota.deb https://github.com/iotaledger/wallet/releases/download/v2.5.7/iota_2.5.7_amd64.deb

RUN apt install ./iota.deb -y

ENV DISPLAY :0

CMD iota
