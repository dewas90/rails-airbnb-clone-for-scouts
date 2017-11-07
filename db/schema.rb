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

ActiveRecord::Schema.define(version: 20171107100635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "host_id"
    t.integer  "camp_site_id"
    t.string   "status",       default: "pending"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["camp_site_id"], name: "index_bookings_on_camp_site_id", using: :btree
    t.index ["host_id"], name: "index_bookings_on_host_id", using: :btree
    t.index ["profile_id"], name: "index_bookings_on_profile_id", using: :btree
  end

  create_table "camp_sites", force: :cascade do |t|
    t.integer  "host_id"
    t.string   "title"
    t.string   "description"
    t.integer  "capacity"
    t.string   "category"
    t.string   "address"
    t.string   "picture"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo"
    t.index ["host_id"], name: "index_camp_sites_on_host_id", using: :btree
  end

  create_table "hosts", force: :cascade do |t|
    t.integer  "profile_id"
    t.string   "bank_account"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["profile_id"], name: "index_hosts_on_profile_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "birth_date"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bookings", "camp_sites"
  add_foreign_key "bookings", "hosts"
  add_foreign_key "bookings", "profiles"
  add_foreign_key "camp_sites", "hosts"
  add_foreign_key "hosts", "profiles"
  add_foreign_key "profiles", "users"
end
