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

ActiveRecord::Schema.define(version: 20140630222045) do

  create_table "activities", force: true do |t|
    t.string   "name"
    t.string   "genre"
    t.text     "description"
    t.string   "season"
    t.integer  "skill_id"
    t.integer  "badge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "age_levels", force: true do |t|
    t.string   "name"
    t.string   "grades"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "badge_age_levels", force: true do |t|
    t.integer  "badge_id"
    t.integer  "age_level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "badge_age_levels", ["age_level_id"], name: "index_badge_age_levels_on_age_level_id"
  add_index "badge_age_levels", ["badge_id"], name: "index_badge_age_levels_on_badge_id"

  create_table "badges", force: true do |t|
    t.string   "name"
    t.string   "troop_type"
    t.string   "category"
    t.string   "logo"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_age_levels", force: true do |t|
    t.integer  "event_id"
    t.integer  "age_level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_age_levels", ["age_level_id"], name: "index_event_age_levels_on_age_level_id"
  add_index "event_age_levels", ["event_id"], name: "index_event_age_levels_on_event_id"

  create_table "event_badges", force: true do |t|
    t.integer  "event_id"
    t.integer  "badge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_badges", ["badge_id"], name: "index_event_badges_on_badge_id"
  add_index "event_badges", ["event_id"], name: "index_event_badges_on_event_id"

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "genre"
    t.text     "description"
    t.string   "season"
    t.string   "one_time"
    t.string   "location"
    t.integer  "badge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
