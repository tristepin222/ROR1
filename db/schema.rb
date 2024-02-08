# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_01_164842) do
  create_table "exams", force: :cascade do |t|
    t.datetime "date"
    t.string "title"
    t.decimal "coefficient"
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_exams_on_subject_id"
  end

  create_table "historics", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "status"
    t.string "current_class"
    t.integer "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_historics_on_person_id"
  end

  create_table "localities", force: :cascade do |t|
    t.integer "PC"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "gender"
    t.string "first_name"
    t.string "last_name"
    t.datetime "birth_date"
    t.string "address"
    t.string "phone_number"
    t.string "email"
    t.boolean "is_teacher"
    t.integer "locality_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locality_id"], name: "index_people_on_locality_id"
  end

  create_table "person_has_exams", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "exam_id", null: false
    t.decimal "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_person_has_exams_on_exam_id"
    t.index ["person_id"], name: "index_person_has_exams_on_person_id"
  end

  create_table "person_has_subjects", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "subject_id", null: false
    t.integer "current_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_person_has_subjects_on_person_id"
    t.index ["subject_id"], name: "index_person_has_subjects_on_subject_id"
  end

  create_table "semester_has_exams", force: :cascade do |t|
    t.integer "semester_id", null: false
    t.integer "exam_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_semester_has_exams_on_exam_id"
    t.index ["semester_id"], name: "index_semester_has_exams_on_semester_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.integer "number"
    t.string "years"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.decimal "coefficient"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "exams", "subjects"
  add_foreign_key "historics", "people"
  add_foreign_key "people", "localities"
  add_foreign_key "person_has_exams", "exams"
  add_foreign_key "person_has_exams", "people"
  add_foreign_key "person_has_subjects", "people"
  add_foreign_key "person_has_subjects", "subjects"
  add_foreign_key "semester_has_exams", "exams"
  add_foreign_key "semester_has_exams", "semesters"
end