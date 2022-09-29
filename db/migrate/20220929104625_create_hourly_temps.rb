class CreateHourlyTemps < ActiveRecord::Migration[7.0]
  def change
    create_table :hourly_temps do |t|
      t.integer :hour_01
      t.integer :hour_02
      t.integer :hour_03
      t.integer :hour_04
      t.integer :hour_05
      t.integer :hour_06
      t.integer :hour_07
      t.integer :hour_08
      t.integer :hour_09
      t.integer :hour_10
      t.integer :hour_11
      t.integer :hour_12
      t.integer :hour_13
      t.integer :hour_14
      t.integer :hour_15
      t.integer :hour_16
      t.integer :hour_17
      t.integer :hour_18
      t.integer :hour_19
      t.integer :hour_20
      t.integer :hour_21
      t.integer :hour_22
      t.integer :hour_23
      t.integer :hour_24

      t.timestamps
    end
  end
end
