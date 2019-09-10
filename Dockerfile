FROM ruby

COPY input.txt /opt/.
COPY sourcepad.rb /opt/.
WORKDIR /opt

CMD ruby sourcepad.rb
