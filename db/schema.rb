# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140608184110) do

  create_table "availabilities", force: true do |t|
    t.integer "dish_id"
    t.integer "store_id"
  end

  create_table "broth_bases", force: true do |t|
    t.string "name"
  end

  create_table "broth_seasonings", force: true do |t|
    t.string "name"
  end

  create_table "broth_weights", force: true do |t|
    t.string "name"
  end

  create_table "dishes", force: true do |t|
    t.string  "dish_name"
    t.integer "ramen_id"
    t.integer "broth_weight_id"
    t.integer "broth_base_id"
    t.integer "broth_seasoning_id"
    t.integer "noodle_id"
    t.text    "description"
  end

  create_table "locations", force: true do |t|
    t.string "name"
  end

  create_table "motherships", force: true do |t|
    t.string  "name"
    t.string  "web_url"
    t.integer "origin_id"
  end

  create_table "noodles", force: true do |t|
    t.string "name"
  end

  create_table "origins", force: true do |t|
    t.string "origin_name"
  end

  create_table "ramen", force: true do |t|
    t.string "name"
  end

  create_table "stores", force: true do |t|
    t.string  "tel"
    t.string  "yelp_url"
    t.string  "web_url"
    t.integer "mothership_id"
    t.string  "address"
    t.integer "location_id"
    t.string  "store_name"
  end

  create_table "users", force: true do |t|
    t.string "username"
    t.string "password"
    t.string "name"
  end

end
