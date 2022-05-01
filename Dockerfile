FROM ruby:2.7.1-alpine

ARG PACKAGES="bash vim "

RUN apk update \
    && apk upgrade \
    && apk add --update --no-cache $PACKAGES

RUN gem install bundler:2.1.4

