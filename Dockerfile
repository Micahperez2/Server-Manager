FROM ruby:2.7.5-alpine
WORKDIR /app
RUN apk add --no-cache build-base tzdata nodejs yarn sqlite-dev postgresql-dev mysql-dev gcompat
RUN gem install bundler
COPY Gemfile Gemfile.lock ./
RUN bundle install
ENV RAILS_ENV=development
COPY . .
RUN bundle exec rails assets:precompile
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
