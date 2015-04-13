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

ActiveRecord::Schema.define(version: 20150408205118) do

  create_table "admins", force: true do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",     default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true

  create_table "mattresses", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "collection"
  end

  create_table "prices", force: true do |t|
    t.integer  "title"
    t.integer  "size_id"
    t.integer  "mattress_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prices", ["mattress_id"], name: "index_prices_on_mattress_id"
  add_index "prices", ["size_id"], name: "index_prices_on_size_id"

  create_table "size_prices", force: true do |t|
    t.integer  "mattress_id"
    t.integer  "50x50"
    t.integer  "100x100"
    t.integer  "150x150"
    t.integer  "200x200"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "size_prices", ["mattress_id"], name: "index_size_prices_on_mattress_id"

  create_table "sizes", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
