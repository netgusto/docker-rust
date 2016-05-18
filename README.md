# Rust in a container

Installs rustup.rs in a container.

## Build

```bash
$ git clone https://github.com/netgusto/docker-rust.git docker-rust
$ cd docker-rust
$ docker build -t my:rust .
```

## Run

```bash 
$ docker run -v `pwd`:/source -it my:rust /bin/bash
```

## Mount your cargo cache (speed up builds)

```bash
$ docker run -v ~/.cargo/registry:/root/.cargo/registry -v `pwd`:/source -it my:rust /bin/bash
```
