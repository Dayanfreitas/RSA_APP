FROM ruby:3.0

WORKDIR /usr/src/app
VOLUME ['./', './usr/src/app']

COPY . .
