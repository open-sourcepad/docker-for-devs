FROM ruby:2.6.4-buster

COPY . /opt

CMD ["ruby", "./opt/sourcepad.rb"]
