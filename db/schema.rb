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

ActiveRecord::Schema.define(version: 20230512135154) do

  create_table "animals", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "contact",    limit: 255
    t.string   "gender",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "Role",       limit: 255
  end

  create_table "comments", force: :cascade do |t|
    t.string   "commenter",   limit: 255
    t.text     "body",        limit: 65535
    t.integer  "student1_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "comments", ["student1_id"], name: "index_comments_on_student1_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "role",        limit: 255
    t.string   "description", limit: 255
    t.integer  "product_id",  limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "patients", ["product_id"], name: "index_patients_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "gender",     limit: 255
    t.string   "address",    limit: 255
    t.string   "peraddress", limit: 255
    t.string   "contactNo",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "student1s", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "gender",     limit: 255
    t.string   "address",    limit: 255
    t.string   "peraddress", limit: 255
    t.string   "contactNo",  limit: 255
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "f_role",     limit: 255
    t.integer  "teacher_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "students", ["teacher_id"], name: "index_students_on_teacher_id", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "contact",    limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "comments", "student1s"
  add_foreign_key "patients", "products"
  add_foreign_key "students", "teachers"
end
