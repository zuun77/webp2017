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

ActiveRecord::Schema.define(version: 20170516112321) do

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "club"
    t.datetime "deadline"
    t.string   "target"
    t.string   "recruit_type"
    t.string   "homepage"
    t.string   "description"
    t.json     "questions"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "token"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.datetime "token_created_at"
    t.index ["token", "token_created_at"], name: "index_users_on_token_and_token_created_at", using: :btree
  end

end
