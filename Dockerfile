FROM node:12-slim

LABEL version="1.0.0"
LABEL repository="https://github.com/SuprGames/suprgames.serverless-java-action"
LABEL homepage="https://github.com/SuprGames/suprgames.serverless-java-action"
LABEL maintainer="Diego Marzo"

LABEL "com.github.actions.name"="Serverless + Java8"
LABEL "com.github.actions.description"="This actions wraps the latest version of Serverless Framework with Java8"
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="orange"

RUN npm i -g serverless@1.77

# Install OpenJDK-8
RUN apt-get update
RUN mkdir -p /usr/share/man/man1
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y ant
RUN apt-get install ca-certificates-java
RUN apt-get clean
RUN update-ca-certificates -f

# Setup JAVA_HOME -- useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

ENTRYPOINT ["./gradlew"]
