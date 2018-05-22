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

ActiveRecord::Schema.define(version: 2018_05_22_195953) do

  create_table "admins", force: :cascade do |t|
    t.string "Username"
    t.string "Password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cohorts", force: :cascade do |t|
    t.string "Name"
    t.datetime "Start_Date"
    t.datetime "End_Date"
    t.string "Course_ID"
    t.string "Student_ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "Title"
    t.integer "Hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_cohorts", force: :cascade do |t|
    t.integer "Student_ID"
    t.integer "Cohort_ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "First_Name"
    t.string "Last_Name"
    t.integer "Age"
    t.string "Education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_cohorts", force: :cascade do |t|
    t.integer "Teacher_ID"
    t.integer "Cohort_ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "First_Name"
    t.string "Last_Name"
    t.integer "Age"
    t.string "Education"
    t.string "Salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers_cohorts", force: :cascade do |t|
    t.integer "Teacher_ID"
    t.integer "Student_ID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
