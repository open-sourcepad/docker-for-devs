FROM ubuntu:18.04

COPY . /application
COPY ./input.txt /opt
WORKDIR /application

ENTRYPOINT  ruby sourcepad.rb
