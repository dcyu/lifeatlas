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

ActiveRecord::Schema.define(version: 20151012153826) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aspirations", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title",       limit: 255
  end

  create_table "block_lists", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "mandarin_notes"
    t.text     "arabic_notes"
    t.text     "spanish_notes"
    t.text     "cantonese_notes"
    t.text     "swahili_notes"
    t.text     "french_notes"
    t.text     "russian_notes"
    t.integer  "rank"
    t.text     "italian_notes"
    t.text     "persian_notes"
  end

  create_table "candidates", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "twitter_name", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destinations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lng",        limit: 255
    t.string   "lat",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "visited"
  end

  create_table "favorites", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "answer",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.integer  "post_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.text     "body"
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "venue_id"
    t.integer  "rating"
    t.string   "song",           limit: 255
    t.boolean  "private"
    t.integer  "subject_id"
  end

  create_table "stops", force: :cascade do |t|
    t.integer  "aspiration_id"
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title", limit: 255
  end

  create_table "trips", force: :cascade do |t|
    t.date     "arrived_on"
    t.date     "left_on"
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tweets", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "candidate_id"
    t.datetime "posted_time"
    t.string   "tweet_id",     limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "venues", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lat",            limit: 255
    t.string   "lng",            limit: 255
  end

  create_table "words", force: :cascade do |t|
    t.string   "english",         limit: 255
    t.string   "mandarin",        limit: 255
    t.string   "arabic",          limit: 255
    t.string   "spanish",         limit: 255
    t.string   "cantonese",       limit: 255
    t.string   "swahili",         limit: 255
    t.string   "french",          limit: 255
    t.string   "russian",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "mandarin_notes"
    t.text     "arabic_notes"
    t.text     "spanish_notes"
    t.text     "cantonese_notes"
    t.text     "swahili_notes"
    t.text     "french_notes"
    t.text     "russian_notes"
    t.integer  "block_list_id"
    t.string   "italian",         limit: 255
    t.text     "italian_notes"
    t.string   "persian"
    t.text     "persian_notes"
  end

end
