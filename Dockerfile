FROM ruby:2.4.2-slim

RUN apt-get update -qq
RUN apt-get install -y build-essential
RUN apt-get install -y nodejs
RUN apt-get install -y npm
# RUN apt-get install -y mysql-client
RUN apt-get install -y libsqlite3-dev
RUN apt-get install -y vim

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./

# RUN bundle exec rake assets:precompile

RUN bundle install --jobs 20 --retry 5

COPY . ./
