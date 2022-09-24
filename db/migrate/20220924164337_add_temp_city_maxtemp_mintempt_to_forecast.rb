class AddTempCityMaxtempMintemptToForecast < ActiveRecord::Migration[7.0]
  def change
    add_column :forecasts, :temp, :string
    add_column :forecasts, :city, :string
    add_column :forecasts, :country, :string
    add_column :forecasts, :max_temp, :integer
    add_column :forecasts, :min_temp, :integer
  end
end
