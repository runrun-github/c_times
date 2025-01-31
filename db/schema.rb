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

ActiveRecord::Schema[8.0].define(version: 2025_01_30_032039) do
  create_table "events", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.integer "event_id", null: false
    t.boolean "sunday_1"
    t.boolean "sunday_2"
    t.boolean "sunday_lunch"
    t.boolean "sunday_3"
    t.boolean "sunday_4"
    t.boolean "sunday_5"
    t.boolean "sunday_6"
    t.boolean "sunday_night"
    t.boolean "monday_1"
    t.boolean "monday_2"
    t.boolean "monday_lunch"
    t.boolean "monday_3"
    t.boolean "monday_4"
    t.boolean "monday_5"
    t.boolean "monday_6"
    t.boolean "monday_night"
    t.boolean "tuesday_1"
    t.boolean "tuesday_2"
    t.boolean "tuesday_lunch"
    t.boolean "tuesday_3"
    t.boolean "tuesday_4"
    t.boolean "tuesday_5"
    t.boolean "tuesday_6"
    t.boolean "tuesday_night"
    t.boolean "wednesday_1"
    t.boolean "wednesday_2"
    t.boolean "wednesday_lunch"
    t.boolean "wednesday_3"
    t.boolean "wednesday_4"
    t.boolean "wednesday_5"
    t.boolean "wednesday_6"
    t.boolean "wednesday_night"
    t.boolean "thursday_1"
    t.boolean "thursday_2"
    t.boolean "thursday_lunch"
    t.boolean "thursday_3"
    t.boolean "thursday_4"
    t.boolean "thursday_5"
    t.boolean "thursday_6"
    t.boolean "thursday_night"
    t.boolean "friday_1"
    t.boolean "friday_2"
    t.boolean "friday_lunch"
    t.boolean "friday_3"
    t.boolean "friday_4"
    t.boolean "friday_5"
    t.boolean "friday_6"
    t.boolean "friday_night"
    t.boolean "saturday_1"
    t.boolean "saturday_2"
    t.boolean "saturday_lunch"
    t.boolean "saturday_3"
    t.boolean "saturday_4"
    t.boolean "saturday_5"
    t.boolean "saturday_6"
    t.boolean "saturday_night"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_users_on_event_id"
  end

  add_foreign_key "users", "events"
end
