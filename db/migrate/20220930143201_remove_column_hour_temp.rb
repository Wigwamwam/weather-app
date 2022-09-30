class RemoveColumnHourTemp < ActiveRecord::Migration[7.0]
  def change
    remove_column :hourly_temps, :hour_24, :integer
  end
end
