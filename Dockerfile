FROM ubuntu:latest
MAINTAINER docker@thb.de

RUN apt-get update
RUN apt-get install openjdk-8-jre-headless -y

# Maven
ADD ./target/webapp-0.0.1-SNAPSHOT.jar /service.jar

ENTRYPOINT java -jar /service.jar
EXPOSE 8080

