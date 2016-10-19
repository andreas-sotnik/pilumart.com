FROM ruby:2.1
RUN gem install bundler
COPY ./Gemfile /app/Gemfile
COPY ./Gemfile.lock /app/Gemfile.lock
WORKDIR /app
RUN bundle install
CMD bundle exec jekyll serve --force_polling
