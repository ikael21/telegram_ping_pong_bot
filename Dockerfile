FROM ruby:2.7.1-alpine

ARG APP_DIRECTORY=/home/telegram-bot
ARG PACKAGES="bash vim \
            alpine-sdk build-base \
            tcl-dev tk-dev \
            mesa-dev jpeg-dev \
            libjpeg-turbo-dev"

RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache $PACKAGES

RUN gem install bundler:2.1.4

# download latest SQLite3 release
RUN wget -O sqlite.tar.gz \
        https://www.sqlite.org/src/tarball/sqlite.tar.gz?r=release && \
    tar xvfz sqlite.tar.gz

# configure and make sqlite3 binary
RUN ./sqlite/configure --prefix=/usr && make && make install

# create a user and group for SQLite3 to avoid: Dockle CIS-DI-0001
ENV \
  USER_SQLITE=sqlite \
  GROUP_SQLITE=sqlite
RUN \
  addgroup -S $GROUP_SQLITE && \
  adduser  -S $USER_SQLITE -G $GROUP_SQLITE

WORKDIR $APP_DIRECTORY
COPY Gemfile ./

RUN bundle install

CMD ruby app/main.rb
