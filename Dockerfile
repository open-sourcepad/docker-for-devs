FROM ruby

COPY input.txt /opt/.
COPY sourcepad.rb /opt/.
WORKDIR /opt

ENTRYPOINT ruby sourcepad.rb
