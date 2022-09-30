require 'open-uri'

class HourlyTemp < ApplicationRecord
  belongs_to :forecast

  def hourly_weather_breakdown(hourly_response)
    request = hourly_response['forecast']['forecastday']

    self.max_temp = request[0]['day']['maxtemp_c'].to_f
    self.min_temp = request[0]['day']['mintemp_c'].to_f
    self.hour_00 = request[0]['hour'][0]['temp_c'].to_f
    self.hour_01 = request[0]['hour'][1]['temp_c'].to_f
    self.hour_02 = request[0]['hour'][2]['temp_c'].to_f
    self.hour_03 = request[0]['hour'][3]['temp_c'].to_f
    self.hour_04 = request[0]['hour'][4]['temp_c'].to_f
    self.hour_05 = request[0]['hour'][5]['temp_c'].to_f
    self.hour_06 = request[0]['hour'][6]['temp_c'].to_f
    self.hour_07 = request[0]['hour'][7]['temp_c'].to_f
    self.hour_08 = request[0]['hour'][8]['temp_c'].to_f
    self.hour_09 = request[0]['hour'][9]['temp_c'].to_f
    self.hour_10 = request[0]['hour'][10]['temp_c'].to_f
    self.hour_11 = request[0]['hour'][11]['temp_c'].to_f
    self.hour_12 = request[0]['hour'][12]['temp_c'].to_f
    self.hour_13 = request[0]['hour'][13]['temp_c'].to_f
    self.hour_14 = request[0]['hour'][14]['temp_c'].to_f
    self.hour_15 = request[0]['hour'][15]['temp_c'].to_f
    self.hour_16 = request[0]['hour'][16]['temp_c'].to_f
    self.hour_17 = request[0]['hour'][17]['temp_c'].to_f
    self.hour_18 = request[0]['hour'][18]['temp_c'].to_f
    self.hour_19 = request[0]['hour'][19]['temp_c'].to_f
    self.hour_20 = request[0]['hour'][20]['temp_c'].to_f
    self.hour_21 = request[0]['hour'][21]['temp_c'].to_f
    self.hour_22 = request[0]['hour'][22]['temp_c'].to_f
    self.hour_23 = request[0]['hour'][23]['temp_c'].to_f
    self.date = request[0]['date']
  end
end
