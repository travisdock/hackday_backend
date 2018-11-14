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

ActiveRecord::Schema.define(version: 2018_11_14_163104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_courses", force: :cascade do |t|
    t.bigint "admin_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_admin_courses_on_admin_id"
    t.index ["course_id"], name: "index_admin_courses_on_course_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
  end

  create_table "assets", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.boolean "accepted", default: false
    t.boolean "deleted", default: false
    t.integer "votes", default: 0
    t.integer "course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
  end

end
