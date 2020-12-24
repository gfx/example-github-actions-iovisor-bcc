FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get --yes update
RUN apt-get install --yes \
  bpfcc-tools

ENTRYPOINT ["python3", "foo.py", "-p", "1"]
