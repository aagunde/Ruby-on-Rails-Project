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

ActiveRecord::Schema.define(version: 20150328152350) do

  create_table "organisers", force: true do |t|
    t.string   "name"
    t.string   "college"
    t.text     "event_title"
    t.text     "event_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "participants", force: true do |t|
    t.string   "name"
    t.string   "college"
    t.text     "interested_event"
    t.text     "year_of_engg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.string   "date_of_birth"
    t.text     "home_address"
    t.string   "email_id"
    t.integer  "contact_no"
    t.string   "institute_name"
    t.text     "institute_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email_id"], name: "index_users_on_email_id", unique: true

end
