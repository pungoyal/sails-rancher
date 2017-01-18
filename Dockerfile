FROM node:latest
MAINTAINER Puneet Goyal <pungoyal@gmail.com>

ENV NODE_ENV production
ENV APP_DIR /sails-rancher
RUN mkdir -p $APP_DIR

WORKDIR $APP_DIR
COPY . .
# COPY package.json package.json
RUN npm install -g sails
RUN npm install

EXPOSE 1337
CMD ["/usr/local/bin/sails", "lift"]
