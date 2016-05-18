FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y apt-utils
RUN apt-get install -y curl build-essential
RUN apt-get install -y file

WORKDIR /tmp
RUN curl https://sh.rustup.rs -sSf > rustup.sh
RUN sh ./rustup.sh -y

RUN rm -Rf /tmp/*

RUN mkdir -p /source
WORKDIR /source

RUN echo "source /root/.cargo/env" > /run.sh
RUN echo "/bin/bash" >> /run.sh

ENV USER=ROOT

ENTRYPOINT ["/bin/bash", "/run.sh"]

