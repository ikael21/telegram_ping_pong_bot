FROM ruby:2.7.1-alpine

ARG APP_DIRECTORY=/home/telegram-bot
ARG PACKAGES="bash vim postgresql-dev \
              alpine-sdk build-base \
              tcl-dev tk-dev postgresql-client \
              mesa-dev jpeg-dev openssl-dev \
              libjpeg-turbo-dev tzdata build-base"

RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache $PACKAGES

RUN gem install bundler:2.1.4

WORKDIR $APP_DIRECTORY

COPY Gemfile Gemfile.lock  ./
RUN bundle install --jobs 5

# add my binaries to PATH
ENV PATH=$APP_DIRECTORY/bin:$PATH

# setup default app environment
ENV RAILS_ENV=development

CMD start_app
