FROM ruby:latest

RUN apt-get update && apt-get install -y ruby-full build-essential zlib1g-dev
RUN gem install jekyll bundler

COPY rodolfomarinho.com /app/

WORKDIR /app/

RUN bundle install

CMD [ "bundle", "exec", "jekyll", "serve" ]