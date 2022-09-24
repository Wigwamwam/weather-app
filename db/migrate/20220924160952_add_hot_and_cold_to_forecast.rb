class AddHotAndColdToForecast < ActiveRecord::Migration[7.0]
  def change
    add_column :forecasts, :hot, :integer
    add_column :forecasts, :cold, :integer
  end
end
