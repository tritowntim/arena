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

ActiveRecord::Schema.define(version: 20141015215410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "battlegrounds", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "battles", force: true do |t|
    t.date     "begins_at"
    t.integer  "home_player_id"
    t.integer  "away_player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "battleground_id"
  end

  create_table "moves", force: true do |t|
    t.text     "description"
    t.integer  "power_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "moves", ["power_id"], name: "index_moves_on_power_id", using: :btree

  create_table "players", force: true do |t|
    t.text     "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "powers", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.integer  "player_id"
    t.integer  "power_id"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["player_id"], name: "index_ratings_on_player_id", using: :btree
  add_index "ratings", ["power_id"], name: "index_ratings_on_power_id", using: :btree

  create_table "turns", force: true do |t|
    t.integer  "battle_id"
    t.integer  "power_id"
    t.integer  "home_player_rating_level"
    t.integer  "away_player_rating_level"
    t.integer  "chance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "move_id"
  end

  add_index "turns", ["battle_id"], name: "index_turns_on_battle_id", using: :btree
  add_index "turns", ["power_id"], name: "index_turns_on_power_id", using: :btree

end
