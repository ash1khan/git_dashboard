FROM node:alpine as builder

EXPOSE 8080

WORKDIR '/app'

COPY ./package.json .

RUN ["npm", "install"]

COPY . .

RUN ["npm", "run", "build"]

FROM nginx

