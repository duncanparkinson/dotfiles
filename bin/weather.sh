#!/usr/bin/env bash
curl -s "https://api.forecast.io/forecast/4ca82afa679364da09177640a41cebb8/`/Users/duncan/.bin/whereami | xargs | cut -d ' ' -f 2,4 | sed 's/ /,/g'`?units=uk" | ruby -Eutf-8 -rjson -e 'j = JSON.parse(STDIN.read); puts "#{j["currently"]["apparentTemperature"].round}°C, #{j["currently"]["summary"]} -> #{j["minutely"]["summary"]}"' >| /Users/duncan/.weather.cache
