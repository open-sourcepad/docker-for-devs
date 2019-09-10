FROM ruby:2.6.4
COPY ./input.txt /workspace/.
WORKDIR /workspace
ENTRYPOINT ruby sourcepad.rb