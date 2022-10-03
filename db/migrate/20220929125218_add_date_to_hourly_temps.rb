class AddDateToHourlyTemps < ActiveRecord::Migration[7.0]
  def change
    add_column :hourly_temps, :date, :datetime
  end
end
