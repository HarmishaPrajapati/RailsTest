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

ActiveRecord::Schema.define(version: 2019_03_29_081707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.string "customer_name"
    t.string "cleaner_name"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cleaners", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.decimal "quality_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "city"
    t.bigint "city_id"
    t.index ["city_id"], name: "index_cleaners_on_city_id"
  end

  create_table "cleaners_customers", id: false, force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "cleaner_id", null: false
    t.index ["customer_id", "cleaner_id"], name: "index_cleaners_customers_on_customer_id_and_cleaner_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city_name"
    t.date "date"
    t.time "time"
    t.bigint "city_id"
    t.index ["city_id"], name: "index_customers_on_city_id"
  end

  add_foreign_key "cleaners", "cities"
  add_foreign_key "customers", "cities"
end
