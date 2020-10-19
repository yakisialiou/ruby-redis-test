#!/bin/sh 
set -ue pipefall

bundle install


sleep 7s
ruby  redis-connection-test.rb
