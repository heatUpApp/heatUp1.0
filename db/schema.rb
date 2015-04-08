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

ActiveRecord::Schema.define(version: 20150408053724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classical_songs", force: :cascade do |t|
    t.string   "title"
    t.string   "artist"
    t.string   "path"
    t.integer  "votes"
    t.integer  "musician_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "classical_songs", ["musician_id"], name: "index_classical_songs_on_musician_id", using: :btree

  create_table "hip_hop_songs", force: :cascade do |t|
    t.string   "title"
    t.string   "artist"
    t.string   "path"
    t.integer  "votes"
    t.integer  "musician_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "hip_hop_songs", ["musician_id"], name: "index_hip_hop_songs_on_musician_id", using: :btree

  create_table "musicians", force: :cascade do |t|
    t.string   "artist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pop_songs", force: :cascade do |t|
    t.string   "title"
    t.string   "artist"
    t.string   "path"
    t.integer  "votes"
    t.integer  "musician_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pop_songs", ["musician_id"], name: "index_pop_songs_on_musician_id", using: :btree

  create_table "rock_songs", force: :cascade do |t|
    t.string   "title"
    t.string   "artist"
    t.string   "path"
    t.integer  "votes"
    t.integer  "musician_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "rock_songs", ["musician_id"], name: "index_rock_songs_on_musician_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.boolean  "musician"
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "classical_songs", "musicians"
  add_foreign_key "hip_hop_songs", "musicians"
  add_foreign_key "pop_songs", "musicians"
  add_foreign_key "rock_songs", "musicians"
end
