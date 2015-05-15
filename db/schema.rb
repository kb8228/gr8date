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

ActiveRecord::Schema.define(version: 20150515232936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dinners", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "cuisine"
    t.datetime "datetime"
    t.string   "alcohol"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "hours"
    t.string   "image_url"
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.string   "event_date"
    t.string   "event_time"
    t.string   "venue_name"
    t.string   "address"
    t.string   "phone"
    t.string   "category"
    t.string   "venue_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "plan_id"
  end

  add_index "events", ["plan_id"], name: "index_events_on_plan_id", using: :btree

  create_table "plans", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.string   "location",   default: "Santa Monica"
    t.integer  "user_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "event_id"
    t.integer  "dinner_id"
    t.string   "category"
    t.string   "cuisine"
  end

  add_index "plans", ["dinner_id"], name: "index_plans_on_dinner_id", using: :btree
  add_index "plans", ["user_id"], name: "index_plans_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "location"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "events", "plans"
  add_foreign_key "plans", "dinners"
  add_foreign_key "plans", "users"
end
