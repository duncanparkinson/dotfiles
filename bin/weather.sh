#!/usr/bin/env bash

# Limit the rate of calls to every 2 minutes
MINUTE=$(date +"%M")
(( MINUTE=(10#$MINUTE) ))
if [ $((MINUTE%5)) -ne 2 ]; then
  cat ~/.weather.cache
  exit
fi

set -e

curl -s "https://api.forecast.io/forecast/4ca82afa679364da09177640a41cebb8/`/Users/duncan/.bin/whereami | xargs | cut -d ' ' -f 2,4 | sed 's/ /,/g'`?units=uk" | ruby -Eutf-8 -rjson -e 'j = JSON.parse(STDIN.read); puts "#{j["currently"]["apparentTemperature"].round}°C, #{j["currently"]["summary"]} -> #{j["minutely"]["summary"]}"' >| ~/.weather.cache

cat ~/.weather.cache
