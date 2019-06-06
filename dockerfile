FROM ubuntu:18.04

LABEL maintainer=hacknlove

LABEL version="1.01"

RUN apt-get update -yqq; apt-get upgrade -yqq; apt-get install curl nodejs npm sudo inotify-tools -yqq
RUN curl https://install.meteor.com/ | sh
RUN npm -g install nodemon

RUN useradd -ms /bin/bash node

USER node

VOLUME /home/node
WORKDIR /home/node
