class AddReferenceHourlyTemp < ActiveRecord::Migration[7.0]
  def change
    remove_column :hourly_temps, :forecast_id, :integer
    add_reference :hourly_temps, :forecast, foreign_key: true
  end
end
