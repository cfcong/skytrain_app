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

ActiveRecord::Schema.define(version: 20131205185202) do

  create_table "attractions", force: true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "subscription_id"
    t.integer  "amount"
    t.datetime "paid_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "name"
    t.text     "description"
    t.string   "cuisine"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", force: true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.string   "name"
    t.text     "description"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "station_trainlines", force: true do |t|
    t.integer "trainline_id"
    t.integer "station_id"
  end

  create_table "stations", force: true do |t|
    t.string   "name"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "neighbourhood"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sequence_num"
  end

  create_table "subscriptions", force: true do |t|
    t.integer  "user_id"
    t.date     "start_date"
    t.date     "last_payment_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "next_payment_date"
  end

  create_table "trainlines", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "card_info"
    t.string   "name_on_card"
    t.integer  "expiration_month"
    t.integer  "expiration_year"
    t.boolean  "subscribed"
  end

end
