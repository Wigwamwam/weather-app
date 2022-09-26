module Weatherapi
  class Client
    # api documentation = https://www.weatherapi.com/docs/
    def fetch_weather(postcode)
      api_key = ENV['WEATHER_API_KEY']
      slug = postcode.delete(' ')
      # params = { api_key:, slug:, days: }.compact
      # HTTParty.get(url, params:)
      url = "https://api.weatherapi.com/v1/forecast.json?key=#{api_key}&q=#{slug}"
      uri = URI.parse(url).open.read
      response = JSON.parse(uri)
    end
  end
end
