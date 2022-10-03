class AddForgienKeyToForecast < ActiveRecord::Migration[7.0]
  def change
    add_column :forecasts, :hourly_temp_id, :integer
  end
end
