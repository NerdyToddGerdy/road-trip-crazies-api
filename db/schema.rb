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

ActiveRecord::Schema.define(version: 20170629205204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "builds", force: :cascade do |t|
    t.string   "build_name"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "site_address"
    t.string   "hotel_link"
    t.string   "family_information"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "join_tables", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "build_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["build_id"], name: "index_join_tables_on_build_id", using: :btree
    t.index ["user_id"], name: "index_join_tables_on_user_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "username"
  end

  create_table "my_builds", force: :cascade do |t|
    t.integer  "build_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["build_id"], name: "index_my_builds_on_build_id", using: :btree
    t.index ["user_id"], name: "index_my_builds_on_user_id", using: :btree
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "is_admin"
    t.string   "picture"
    t.string   "photo"
  end

  add_foreign_key "join_tables", "builds"
  add_foreign_key "join_tables", "users"
  add_foreign_key "my_builds", "builds"
  add_foreign_key "my_builds", "users"
end
