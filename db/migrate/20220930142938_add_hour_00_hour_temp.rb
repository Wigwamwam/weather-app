class AddHour00HourTemp < ActiveRecord::Migration[7.0]
  def change
    add_column :hourly_temps, :hour_00, :integer
  end
end
