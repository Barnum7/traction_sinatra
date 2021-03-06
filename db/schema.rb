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

ActiveRecord::Schema.define(version: 20150918032302) do

  create_table "member_skills", force: :cascade do |t|
    t.integer "member_id"
    t.integer "skill_id"
  end

  create_table "members", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "member_id"
    t.string   "description"
    t.string   "required_skill"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "completed",      default: false
    t.integer  "skill_id"
  end

end
