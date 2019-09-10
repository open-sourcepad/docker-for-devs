FROM ruby:2.6.4-buster

COPY ./sourcepad.rb /application
COPY ./input.txt /application/opt
WORKDIR /application

CMD ["ruby", "./sourcepad.rb"]
