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

ActiveRecord::Schema.define(:version => 20120805220006) do

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.string   "ident"
    t.text     "url"
    t.string   "category"
    t.integer  "position"
    t.integer  "snapshots_count",       :default => 0
    t.integer  "last_snapshot_id"
    t.string   "last_snapshot_preview"
    t.datetime "last_snapshot_at"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  add_index "sites", ["ident"], :name => "index_sites_on_ident", :unique => true
  add_index "sites", ["url"], :name => "index_sites_on_url", :unique => true

  create_table "snapshots", :force => true do |t|
    t.integer  "site_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.float    "runtime"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "site_ident"
  end

end
