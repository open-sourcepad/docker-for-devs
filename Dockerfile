FROM ruby

COPY ./input.txt /workspace/.
WORKDIR workspace

ENTRYPOINT ruby sourcepad.rb
