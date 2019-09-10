FROM ruby:2.6.4

COPY . /app
WORKDIR /app

RUN apt-get update
RUN apt-get install -y dict

RUN bundle install

ENTRYPOINT API_VERSION=$API_VERSION rails s -b 0.0.0.0