FROM ruby:2.6

COPY . /redis-app
WORKDIR /redis-app
RUN bundle install


ENV REDIS_LOCATION=localhost
ENV REDIS_KEY=testkey
ENV REDIS_VALUE=mytestvalue
ENV SCRIPT_MODE=write

CMD ["ruby",  "redis-connection-test.rb"] 
