FROM node:12-slim

LABEL version="1.0.0"
LABEL repository="https://github.com/suprgames/suprgames.github-action"
LABEL homepage="https://github.com/suprgames/suprgames.github-action"
LABEL "com.github.actions.name"="SuprgamesServerless"
LABEL "com.github.actions.description"="Gradle runner for Serverless"
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="red"

RUN npm i -g serverless@1.77
