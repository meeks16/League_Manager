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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140116225412) do

  create_table "games", :force => true do |t|
    t.integer  "match_id"
    t.integer  "teamA_score"
    t.integer  "teamB_score"
    t.integer  "sequence_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "number"
  end

  create_table "matches", :force => true do |t|
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.datetime "date"
    t.integer  "court"
    t.integer  "timeslot_id"
    t.integer  "winner"
    t.integer  "season_id"
    t.integer  "season_home_team_id"
    t.integer  "season_away_team_id"
    t.integer  "game_id"
  end

  create_table "season_team_users", :force => true do |t|
    t.integer  "season_team_id"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "season_teams", :force => true do |t|
    t.integer  "season_id"
    t.integer  "team_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "sets_played"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "match_played"
    t.integer  "match_wins"
    t.integer  "match_losses"
  end

  create_table "seasons", :force => true do |t|
    t.string   "name"
    t.date     "start"
    t.date     "end"
    t.string   "frequency"
    t.integer  "number_of_courts"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "league_name"
    t.integer  "number_of_timeslots"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "sets_played"
    t.integer  "wins"
    t.integer  "losses"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "timeslots", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "season_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "display_name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
