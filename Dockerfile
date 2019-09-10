FROM ruby:2.6.4
COPY ./sourcepad.rb /opt
WORKDIR /opt
ENTRYPOINT ruby sourcepad.rb