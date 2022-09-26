require 'open-uri'

class Forecast < ApplicationRecord
  validates :postcode, presence: { message: "Postcode can't be blank." }
  validates :postcode,
            format: { with: /[A-PR-UWYZ]([0-9]{1,2}|([A-HK-Y][0-9]|[A-HK-Y][0-9]([0-9]|[ABEHMNPRV-Y]))|[0-9][A-HJKS-UW])\ [0-9][ABD-HJLNP-UW-Z]{2}/i,
            message: 'Please enter a valid UK postcode and correctly positioned spaces.' }
  validates :hot, presence: { message: "Heat threshold can't be blank." },
            numericality: { greater_than_or_equal_to: -20, less_than_or_equal_to: 50 }
  validates :cold, presence: { message: "Cold threshold can't be blank." },
            numericality: { greater_than_or_equal_to: -20, less_than_or_equal_to: 50 }

  def set_from_weather_api(response)
    self.city = response['location']['name']
    self.country = response['location']['country']
    self.max_temp = response['forecast']['forecastday'][0]['day']['maxtemp_c'].to_f
    self.min_temp = response['forecast']['forecastday'][0]['day']['mintemp_c'].to_f
    self.temp = set_threshold(max_temp, hot, cold)
  end

  private

  def set_threshold(max_temp, hot, cold)
    if max_temp.to_i >= hot
      'hot'
    elsif max_temp.to_i <= cold
      'cold'
    else
      'warm'
    end
  end
end
