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

ActiveRecord::Schema.define(version: 20160501233929) do

  create_table "exercise_entries", force: true do |t|
    t.integer  "reps"
    t.integer  "sets"
    t.decimal  "weight"
    t.string   "notes"
    t.integer  "exercise_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "measure"
    t.integer  "sample_exercise_id"
  end

  add_index "exercise_entries", ["exercise_id"], name: "index_exercise_entries_on_exercise_id"
  add_index "exercise_entries", ["sample_exercise_id"], name: "index_exercise_entries_on_sample_exercise_id"
  add_index "exercise_entries", ["user_id"], name: "index_exercise_entries_on_user_id"

  create_table "exercises", force: true do |t|
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "routine_id"
    t.integer  "sample_exercise_id"
  end

  add_index "exercises", ["routine_id"], name: "index_exercises_on_routine_id"
  add_index "exercises", ["sample_exercise_id"], name: "index_exercises_on_sample_exercise_id"
  add_index "exercises", ["user_id"], name: "index_exercises_on_user_id"

  create_table "muscle_measures", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "unit"
    t.string   "name"
    t.decimal  "measurement"
  end

  add_index "muscle_measures", ["user_id"], name: "index_muscle_measures_on_user_id"

  create_table "routines", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "routines", ["user_id"], name: "index_routines_on_user_id"

  create_table "sample_exercises", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.date     "dob"
    t.string   "fname"
    t.string   "lname"
    t.string   "gender"
    t.decimal  "body_weight"
    t.boolean  "admin",                  default: false
    t.string   "measure"
    t.string   "level"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
