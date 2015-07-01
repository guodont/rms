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

ActiveRecord::Schema.define(version: 20150701091443) do

  create_table "archives", force: :cascade do |t|
    t.string   "archiveno",  limit: 255
    t.string   "jiyaono",    limit: 255
    t.boolean  "issend",     limit: 1
    t.string   "sendway",    limit: 255
    t.boolean  "isduyan",    limit: 1
    t.string   "firstsend",  limit: 255
    t.string   "secondsend", limit: 255
    t.string   "hmaterial",  limit: 255
    t.string   "umaterial",  limit: 255
    t.string   "mmaterial",  limit: 255
    t.string   "dmaterial",  limit: 255
    t.string   "pmaterial",  limit: 255
    t.string   "omaterial",  limit: 255
    t.string   "zmaterial",  limit: 255
    t.string   "remark",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "student_id", limit: 4
  end

  create_table "classses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "major_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "colleges", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "majors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "college_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "cate",       limit: 4
    t.string   "remark",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "gender",     limit: 255
    t.string   "nation",     limit: 255
    t.date     "birthday"
    t.string   "politcs",    limit: 255
    t.string   "diplomano",  limit: 255
    t.string   "college",    limit: 255
    t.string   "classname",  limit: 255
    t.string   "major",      limit: 255
    t.string   "studentno",  limit: 255
    t.string   "address",    limit: 255
    t.string   "img",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "phone",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
    t.boolean  "admin",           limit: 1
  end

end
