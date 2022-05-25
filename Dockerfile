FROM ubuntu:16.04

RUN apt-get update -y \
  && apt-get install -y \
  context \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get clean \
  && apt-get autoremove -y

WORKDIR /root/mtxrun

ENTRYPOINT [ "mtxrun" ]