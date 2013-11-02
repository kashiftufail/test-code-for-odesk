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

ActiveRecord::Schema.define(version: 20131030095451) do

  create_table "blog_entries", force: true do |t|
    t.text     "html"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_image_file_name"
    t.string   "cover_image_content_type"
    t.integer  "cover_image_file_size"
    t.datetime "cover_image_updated_at"
    t.boolean  "published"
    t.string   "title"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "comments", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "website"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "blog_entry_id"
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evaluations", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.decimal  "bedrooms"
    t.decimal  "bathrooms"
    t.integer  "size"
    t.integer  "age"
    t.text     "features"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "province"
  end

  create_table "hot_listings", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pg_search_documents", force: true do |t|
    t.text     "content"
    t.integer  "searchable_id"
    t.string   "searchable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "postal_code"
    t.integer  "sqft"
    t.integer  "bedrooms"
    t.decimal  "bathrooms"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "property_status_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.decimal  "price"
    t.integer  "cars"
    t.integer  "property_type_id"
    t.text     "description"
  end

  create_table "property_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "property_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
