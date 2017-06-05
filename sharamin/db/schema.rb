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

ActiveRecord::Schema.define(version: 20170605175426) do

  create_table "applications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "name"
    t.string   "id_num"
    t.string   "dept"
    t.string   "degree"
    t.string   "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "club"
    t.datetime "deadline"
    t.string   "target"
    t.string   "recruit_type"
    t.string   "homepage"
    t.text     "description",  limit: 65535
    t.json     "questions"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "attachment"
    t.string   "etc"
    t.integer  "user"
    t.string   "logo_img"
  end

  create_table "resumes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "dept"
    t.string   "id_num"
    t.string   "degree"
    t.string   "position"
    t.json     "answers"
    t.integer  "user_id"
    t.integer  "post_id"
    t.index ["post_id"], name: "index_resumes_on_post_id", using: :btree
    t.index ["user_id"], name: "index_resumes_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "email"
    t.string   "pw"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "resumes", "posts"
  add_foreign_key "resumes", "users"
end
