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

ActiveRecord::Schema.define(version: 20151023215129) do

  create_table "newsposts", force: :cascade do |t|
    t.text     "content"
    t.string   "poster"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newsposts_tags", force: :cascade do |t|
    t.integer "newspost_id"
    t.integer "tag_id"
  end

  add_index "newsposts_tags", ["newspost_id"], name: "index_newsposts_tags_on_newspost_id"
  add_index "newsposts_tags", ["tag_id"], name: "index_newsposts_tags_on_tag_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
