FROM alpine:3.18.3

RUN  mkdir -p /etc/builder

COPY files/* /etc/builder/

RUN apk update && apk add openjdk17 && apk add maven && apk add git && mvn -f /etc/builder/pom.xml clean install