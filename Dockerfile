FROM 2.6.4-buster

COPY ./src /application
WORKDIR /application

CMD ["./sourcepad.rb"]
