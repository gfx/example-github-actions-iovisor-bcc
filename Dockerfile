FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get --yes update
RUN apt-get install --yes \
  bpf-tools

ENTRYPOINT ["tplist-bpfcc", "/bin/ls"]
