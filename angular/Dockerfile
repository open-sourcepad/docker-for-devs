FROM node:lts-jessie

COPY ./package.json /app/package.json
COPY ./package-lock.json /app/package-lock.json
WORKDIR app

RUN npm install
RUN npm install -g @angular/cli

ENTRYPOINT ng serve --host 0.0.0.0