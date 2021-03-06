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

ActiveRecord::Schema.define(version: 2020_03_05_154415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer "guest_id"
    t.integer "space_id"
    t.date "start"
    t.date "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "discount", default: 0
    t.integer "rate"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_url"
  end

  create_table "listings", force: :cascade do |t|
    t.integer "space_id"
    t.datetime "listing_start"
    t.datetime "listing_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.float "lat"
    t.float "long"
    t.integer "daily_rate"
    t.text "description"
    t.integer "host_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_url"
    t.string "img_url2"
    t.string "img_url3"
    t.string "img_url4"
    t.string "slug"
    t.integer "api_id"
    t.boolean "promo", default: false
  end

  create_table "spaces_features", force: :cascade do |t|
    t.integer "space_id"
    t.integer "feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.string "city"
    t.string "state"
    t.string "phone"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "points", default: 1000
    t.boolean "reward", default: false
    t.string "img_url"
  end

end
