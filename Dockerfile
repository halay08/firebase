# Build for cesvn/node-firebase:latest
FROM node:12-slim

RUN apt update && apt upgrade -y \
    && mkdir -p /usr/share/man/man1 \
    && apt-get -y install default-jre
RUN yarn global add firebase-tools && yarn cache clean
