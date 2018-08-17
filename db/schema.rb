# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_17_023555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "homes", force: :cascade do |t|
    t.integer "host_id", null: false
    t.string "name", null: false
    t.string "city", null: false
    t.integer "max_guests", null: false
    t.integer "num_rooms", null: false
    t.integer "num_beds", null: false
    t.integer "num_baths", null: false
    t.text "description", null: false
    t.text "house_rules"
    t.text "cancellation_policy", null: false
    t.float "latitude", null: false
    t.float "longitude", null: false
    t.float "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_id"], name: "index_homes_on_host_id"
    t.index ["name"], name: "index_homes_on_name"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "guest_id", null: false
    t.integer "home_id", null: false
    t.integer "num_guests", null: false
    t.date "check_in_date", null: false
    t.date "check_out_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_reservations_on_guest_id"
    t.index ["home_id"], name: "index_reservations_on_home_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "home_id", null: false
    t.integer "user_id", null: false
    t.integer "rating", null: false
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["home_id"], name: "index_reviews_on_home_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
