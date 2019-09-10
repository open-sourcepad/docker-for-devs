FROM ruby:2.6.4

COPY . /sourcepad
WORKDIR sourcepad

RUN bundle install

ENTRYPOINT rails s