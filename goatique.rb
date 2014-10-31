#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'

#
# this is the script for the twitter bot goatique
# generated on 2014-10-22 13:23:47 -0700
#

consumer_key 'QPG4KLAc07E19qOtV5OBHcmm3'
consumer_secret 'N3sBXPB19vJiY09MBk23a5fuPTHlGqyao9aGcJM02LQRdlMkj1'

secret '2WyH0TOKWjyWElMMjiDJIpyrhYJ8s4dhzldCloHH4xoXT'
token '2841465057-sQwPN5qE5z9jjDQ7Gp9EYRIXPxaUvYSDSBAQ0Cf'

# # remove this to send out tweets
# debug_mode
#
# # remove this to update the db
# no_update
# remove this to get less output when running
verbose

loop do
  replies do |tweet|
    if tweet.text.include?("?")
      reply "Hey #USER#, I goan't know much about anything", tweet
    else
      reply "#USER#, I can't handle your imperatives. Give me a question, or give me death.", tweet
    end
  end

  update_config
  sleep 60

end
