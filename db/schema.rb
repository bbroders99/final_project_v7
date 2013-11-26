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

ActiveRecord::Schema.define(version: 20131126054951) do

  create_table "artists", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "bio"
  end

  create_table "bids", force: true do |t|
    t.integer "idea_id"
    t.integer "artist_id"
  end

  create_table "buyers", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
  end

  create_table "idea_images", force: true do |t|
    t.string  "url"
    t.integer "idea_id"
  end

  create_table "ideas", force: true do |t|
    t.date    "post_date"
    t.string  "title"
    t.text    "description"
    t.float   "price"
    t.string  "category"
    t.string  "size"
    t.string  "status"
    t.integer "rating"
    t.integer "buyer_id"
    t.integer "artist_id"
  end

  create_table "portfolio_images", force: true do |t|
    t.string  "url"
    t.integer "artist_id"
  end

end
