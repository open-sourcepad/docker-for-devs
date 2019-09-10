FROM ruby:2.6.4-buster

COPY . /application
COPY ./input.txt /opt
WORKDIR /application

ENTRYPOINT  ruby sourcepad.rb
