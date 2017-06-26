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

ActiveRecord::Schema.define(version: 20170620224309) do

  create_table "coments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "space_id"
    t.string   "coment"
    t.integer  "points"
    t.integer  "recommends"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["space_id"], name: "index_coments_on_space_id"
    t.index ["user_id"], name: "index_coments_on_user_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "spaces", force: :cascade do |t|
    t.integer  "manager_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["manager_id"], name: "index_spaces_on_manager_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "nickname"
    t.integer  "points"
    t.string   "image_url"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email"
  end

end
