FROM ubuntu:18.04

COPY . /application
COPY ./input.txt /opt
WORKDIR /application

RUN sudo apt-get install ruby

ENTRYPOINT  ruby sourcepad.rb
