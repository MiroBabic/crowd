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

ActiveRecord::Schema.define(version: 20160428204502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name_en"
    t.string   "name_cs"
    t.string   "name_hu"
    t.string   "name_pl"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.integer  "reward_id"
    t.integer  "amount"
    t.boolean  "confirmed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "payments", ["project_id"], name: "index_payments_on_project_id", using: :btree
  add_index "payments", ["reward_id"], name: "index_payments_on_reward_id", using: :btree
  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "about"
    t.integer  "amount"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "category_id"
    t.string   "duration"
    t.json     "pictures"
    t.string   "annotation",  limit: 250
    t.boolean  "enabled"
    t.boolean  "requested"
    t.datetime "started"
    t.datetime "confirmdate"
    t.datetime "enddate"
    t.string   "profile_pic"
  end

  add_index "projects", ["category_id"], name: "index_projects_on_category_id", using: :btree
  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "rewards", force: :cascade do |t|
    t.string   "name"
    t.integer  "amount"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "about"
  end

  add_index "rewards", ["project_id"], name: "index_rewards_on_project_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.string   "picture"
    t.string   "fbprofile"
    t.string   "gplusprofile"
    t.string   "twitterprofile"
    t.string   "phone"
    t.string   "altemail"
    t.string   "personalweb"
    t.string   "aboutme"
    t.boolean  "admin",                  default: false
    t.string   "country"
    t.string   "provider"
    t.string   "uid"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "payments", "projects"
  add_foreign_key "payments", "rewards"
  add_foreign_key "payments", "users"
  add_foreign_key "projects", "users"
  add_foreign_key "rewards", "projects"
end
