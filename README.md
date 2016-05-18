# Rust in a container

## Build

$ git clone https://github.com/netgusto/docker-rust.git docker-rust
$ cd docker-rust
$ docker build -t my:rust .

## Run

$ docker run -v `pwd`:/source -it my:rust /bin/bash


