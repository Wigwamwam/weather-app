# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_30_143201) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forecasts", force: :cascade do |t|
    t.string "postcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hot"
    t.integer "cold"
    t.string "temp"
    t.string "city"
    t.string "country"
  end

  create_table "hourly_temps", force: :cascade do |t|
    t.integer "hour_00"
    t.integer "hour_01"
    t.integer "hour_02"
    t.integer "hour_03"
    t.integer "hour_04"
    t.integer "hour_05"
    t.integer "hour_06"
    t.integer "hour_07"
    t.integer "hour_08"
    t.integer "hour_09"
    t.integer "hour_10"
    t.integer "hour_11"
    t.integer "hour_12"
    t.integer "hour_13"
    t.integer "hour_14"
    t.integer "hour_15"
    t.integer "hour_16"
    t.integer "hour_17"
    t.integer "hour_18"
    t.integer "hour_19"
    t.integer "hour_20"
    t.integer "hour_21"
    t.integer "hour_22"
    t.integer "hour_23"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "max_temp"
    t.integer "min_temp"
    t.bigint "forecast_id"
    t.datetime "date"
    t.index ["forecast_id"], name: "index_hourly_temps_on_forecast_id"
  end

  add_foreign_key "hourly_temps", "forecasts"
end
