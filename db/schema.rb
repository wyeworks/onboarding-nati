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

ActiveRecord::Schema[7.1].define(version: 2024_07_08_123815) do
  create_table "airports", force: :cascade do |t|
    t.integer "code"
    t.float "location_latitude"
    t.float "location_longitude"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.integer "flight_number"
    t.string "type"
    t.integer "indirect_flight_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "plane_id", null: false
    t.index ["indirect_flight_id"], name: "index_flights_on_indirect_flight_id"
    t.index ["plane_id"], name: "index_flights_on_plane_id"
  end

  create_table "flights_gates", id: false, force: :cascade do |t|
    t.integer "flight_id", null: false
    t.integer "gate_id", null: false
  end

  create_table "gates", force: :cascade do |t|
    t.integer "airport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["airport_id"], name: "index_gates_on_airport_id"
  end

  create_table "planes", force: :cascade do |t|
    t.integer "capacity"
    t.string "make"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "flights", "flights", column: "indirect_flight_id"
  add_foreign_key "flights", "planes"
  add_foreign_key "gates", "airports"
end
