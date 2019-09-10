FROM ruby

COPY input.txt /application/.
COPY sourcepad.rb /application/.
WORKDIR /application

CMD ruby sourcepad.rb
