#!/usr/bin/env ruby
system("ruby -v")
system("gem list --local")

require 'lost'
require 'forecast_io'

current_position = Lost.current_position
ForecastIO.api_key = '4ca82afa679364da09177640a41cebb8'
forecast = ForecastIO.forecast(current_position[0], current_position[1], params: { units: 'uk' })

File.write("#{ENV['HOME']}/.weather.cache", "#{forecast.currently.summary} / #{forecast.minutely.summary}")
