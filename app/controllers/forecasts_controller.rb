# frozen_string_literal: true
require 'weatherapi/client'

class ForecastsController < ApplicationController
  def new
    @forecast = Forecast.new
  end

  def create
    @forecast = Forecast.new(forecast_params)
    if @forecast.valid?

      response = Weatherapi::Client.new.fetch_weather(@forecast.postcode)
      @forecast.set_from_weather_api(response)
      @forecast.save
      days = 0
      while days < 6 do
        hourly_response = Weatherapi::Client.new.fetch_future_weather(postcode, days)
        @hourly = HourlyTemp.new
        @hourly.forecast = @forecast
        @hourly.hourly_weather_breakdown(hourly_response)
        @hourly.save
        days += 1
      end

      redirect_to forecast_path(@forecast)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @forecast = Forecast.find(params[:id])
    @hourly_temps_1 = HourlyTemp.where(forecast: @forecast)
  end

  private

  def forecast_params
    params.require(:forecast).permit(:postcode, :hot, :cold)
  end
end
