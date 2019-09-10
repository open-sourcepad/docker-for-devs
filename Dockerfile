FROM ruby:2.6.4-buster

COPY ./sourcepad.rb /application/opt
WORKDIR /application

CMD ["./sourcepad.rb"]
