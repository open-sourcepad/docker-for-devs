FROM ruby

COPY input.txt /opt/.
WORKDIR /opt

ENTRYPOINT ruby sourcepad.rb
