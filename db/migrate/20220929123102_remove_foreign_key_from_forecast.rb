class RemoveForeignKeyFromForecast < ActiveRecord::Migration[7.0]
  def change
    remove_column :forecasts, :hourly_temp_id, :integer
  end
end
