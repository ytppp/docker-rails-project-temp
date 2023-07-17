FROM ruby:3.2.2

RUN apt-get update && apt-get install -y --no-install-recommends \
  libpq-dev \
  libvips42 \
  postgresql-client

RUN gem install bundler -v 2.4.8 && \
  bundle config set --local path vendor/bundle

WORKDIR /app