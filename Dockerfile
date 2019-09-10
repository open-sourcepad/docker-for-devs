FROM ruby:2.6.4-buster

COPY ./input.txt /opt/input.txt
COPY ./sourcepad.rb /opt/sourcepad.rb

CMD ["./opt/sourcepad.rb"]
