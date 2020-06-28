FROM ruby:2.6
RUN apt update && apt install -y nodejs
RUN gem install rails -v '5.2'
WORKDIR /opt/rails/handson
COPY rails/handson/Gemfile ./Gemfile
COPY rails/handson/Gemfile.lock ./Gemfile.lock
RUN bundle install
CMD sh entrypoint.sh
