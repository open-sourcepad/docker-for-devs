FROM node:lts-jessie

COPY . /app
WORKDIR app

RUN npm install
RUN npm install -g @angular/cli

ENTRYPOINT ng serve --host 0.0.0.0