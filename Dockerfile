FROM ruby:2.6.4
COPY ./input.txt /opt
WORKDIR /opt
ENTRYPOINT ruby /opt/sourcepad.rb