class AddColoumnHourTemp < ActiveRecord::Migration[7.0]
  def change
    add_column :hourly_temps, :max_temp, :integer
    add_column :hourly_temps, :min_temp, :integer
    remove_column :forecasts, :max_temp, :integer
    remove_column :forecasts, :min_temp, :integer
  end
end
