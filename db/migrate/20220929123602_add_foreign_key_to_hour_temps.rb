class AddForeignKeyToHourTemps < ActiveRecord::Migration[7.0]
  def change
    add_column :hourly_temps, :forecast_id, :integer
    add_foreign_key :hourly_temps, :forecasts
  
  end
end
