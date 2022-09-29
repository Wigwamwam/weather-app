module Weatherapi
  class Client
    # api documentation = https://www.weatherapi.com/docs/
    def fetch_weather(postcode, days)

      api_key = ENV['WEATHER_API_KEY']
      slug = postcode.delete(' ')
      # day = "0"
      # params = { api_key:, slug:, days: }.compact
      # HTTParty.get(url, params:)
      # days = 0

      # params = {
      #   "api_key" => "#{api_key}",
      #   "slug" => "#{slug}"
      #   # "days" => "#{day}"
      # }

      # url = HTTParty.get(
      #   "https://api.weatherapi.com/v1/forecast.json?",
      #   :params => params
      # )

      url = "https://api.weatherapi.com/v1/forecast.json?key=#{api_key}&q=#{slug}&days=#{days}"
      uri = URI.parse(url).open.read
      response = JSON.parse(uri)
    end
  end
end
