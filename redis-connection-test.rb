require 'bundler/setup'
require 'redis'
require 'securerandom'

redisLocation = ENV['REDIS_LOCATION']
redisKey = ENV['REDIS_KEY']
redisValue = ENV['REDIS_VALUE']

scriptMode = ENV['SCRIPT_MODE']

if scriptMode == "write"
  puts "Working in write mode"
  redis = Redis.new(host: redisLocation)
  redis.set(redisKey, redisValue)
elsif  scriptMode == "read"
  puts "Working in read mode"
  redis = Redis.new(host: redisLocation)
  output = redis.get(redisKey)
  puts "The output from redis is %s" % [output]
  if output == redisValue
    puts "The value from redis %s is equal to expected %s" % [output,redisValue]
  end
else 
  puts "Unknown mode"
end
