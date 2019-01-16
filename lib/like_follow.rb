require 'twitter'
require 'dotenv'
Dotenv.load
client = Twitter::REST::Client.new do |config|
  config.consumer_key       = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]	
end
user = []
while i<20
 user[i]=CLIENT.search("#bonjour_monde", lang: "fr").first.text 
 CLIENT.follow(user[i])
 i+=1
end