FROM ubuntu:18.04

COPY ./src /application
WORKDIR /application

ENTRYPOINT  ruby sourcepad.rb
