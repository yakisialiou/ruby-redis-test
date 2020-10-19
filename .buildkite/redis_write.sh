#!/bin/sh 
set -ue pipefall

bundle install

ruby  redis-connection-test.rb
