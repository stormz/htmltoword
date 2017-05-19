FROM ruby:2.4-alpine

RUN apk add --no-cache \
  gcc \
  build-base

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app

COPY Gemfile* *.gemspec /usr/src/app/
COPY lib/htmltoword/version.rb /usr/src/app/lib/htmltoword/version.rb
RUN bundle install

ENV IS_DOCKER "YES"

CMD sh
