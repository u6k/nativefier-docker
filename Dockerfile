FROM ubuntu:latest
MAINTAINER u6k <u6k.apps@gmail.com>

RUN apt-get update

RUN apt-get install -y npm && \
    update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10 && \
    npm install nativefier -g

RUN mkdir /mnt/dest

ENTRYPOINT [ "nativefier" ]
