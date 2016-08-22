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

ActiveRecord::Schema.define(version: 20160818135912) do

  create_table "agreements", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.integer  "code"
    t.integer  "orderer_id"
    t.time     "constraction_date"
    t.time     "completion_date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "calendars", force: :cascade do |t|
    t.date     "hiduke"
    t.integer  "year"
    t.integer  "month"
    t.integer  "day"
    t.boolean  "holiday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orderers", force: :cascade do |t|
    t.string   "name"
    t.string   "yomi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "name"
    t.string   "office"
    t.integer  "order"
    t.decimal  "wage"
    t.date     "birthday"
    t.date     "hire_date"
    t.date     "leaving_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "works", force: :cascade do |t|
    t.date     "calendar_date"
    t.string   "staff_id"
    t.integer  "agreement_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.decimal  "work_time"
    t.decimal  "over_time"
    t.decimal  "late_night_over_time"
    t.text     "note"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
