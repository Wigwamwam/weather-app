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
      redirect_to forecast_path(@forecast)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @forecast = Forecast.find(params[:id])
  end

  private

  def forecast_params
    params.require(:forecast).permit(:postcode, :hot, :cold)
  end
end
