FROM node:12-slim

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