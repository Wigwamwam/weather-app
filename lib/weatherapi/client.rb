require 'open-uri'

module Weatherapi
  class Client
    # api documentation = https://www.weatherapi.com/docs/
    def fetch_weather(postcode)
      # see HTTParty to refactor code
      api_key = ENV['WEATHER_API_KEY']
      slug = postcode.delete(' ')
      url = "https://api.weatherapi.com/v1/forecast.json?key=#{api_key}&q=#{slug}"
      uri = URI.parse(url).open.read
      response = JSON.parse(uri)
    end

    def fetch_future_weather(postcode, days)
      # see HTTParty to refactor code
      api_key = ENV['WEATHER_API_KEY']
      slug = postcode.delete(' ')
      url = "https://api.weatherapi.com/v1/forecast.json?key=#{api_key}&q=#{slug}&days=#{days}"
      uri = URI.parse(url).open.read
      response = JSON.parse(uri)
    end
  end
end
