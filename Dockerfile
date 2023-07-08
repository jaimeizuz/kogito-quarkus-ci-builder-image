FROM maven:3.8.5-openjdk-17-slim

RUN  mkdir -p /etc/builder

COPY files/* /etc/builder

RUN apt-get update && apt-get install -y xmlstarlet && mvn -f /etc/builder/pom.xml clean install