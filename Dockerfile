FROM ruby:2.5.1-slim

RUN apt-get update && apt-get install -y build-essential default-libmysqlclient-dev libpq-dev libsqlite3-dev wget apt-transport-https git curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install nodejs -y

WORKDIR /app

# Mostly static
COPY config.ru /app/
COPY Rakefile /app/
COPY bin /app/bin
COPY public /app/public
COPY db /app/db
COPY .ruby-version /app/.ruby-version

# Gems
ADD Gemfile Gemfile.lock /app/
ADD vendor/cache /app/vendor/cache
RUN bundle install --local --quiet --jobs 4 --deployment || bundle check

# Code
COPY config /app/config
COPY app /app/app
COPY lib /app/libs

EXPOSE 3000

CMD ["bundle", "exec", "rails", "s"]
