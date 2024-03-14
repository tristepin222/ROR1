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

ActiveRecord::Schema[7.1].define(version: 2024_03_07_103047) do
  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.integer "room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_classrooms_on_name", unique: true
  end

  create_table "exams", force: :cascade do |t|
    t.datetime "date"
    t.string "title"
    t.decimal "coefficient"
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_exams_on_subject_id"
  end

  create_table "localities", force: :cascade do |t|
    t.integer "postal_code"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "locality_id"
    t.index ["email"], name: "index_people_on_email", unique: true
    t.index ["locality_id"], name: "index_people_on_locality_id"
    t.index ["reset_password_token"], name: "index_people_on_reset_password_token", unique: true
  end

  create_table "person_belongs_to_classrooms", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.integer "person_id", null: false
    t.integer "classroom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_person_belongs_to_classrooms_on_classroom_id"
    t.index ["person_id"], name: "index_person_belongs_to_classrooms_on_person_id"
  end

  create_table "person_evaluate_exams", force: :cascade do |t|
    t.date "exam_date"
    t.integer "person_id", null: false
    t.integer "exam_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_person_evaluate_exams_on_exam_id"
    t.index ["person_id"], name: "index_person_evaluate_exams_on_person_id"
  end

  create_table "person_have_exams", force: :cascade do |t|
    t.integer "grade"
    t.integer "person_id", null: false
    t.integer "exam_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_person_have_exams_on_exam_id"
    t.index ["person_id"], name: "index_person_have_exams_on_person_id"
  end

  create_table "person_learn_subjects", force: :cascade do |t|
    t.date "learn_date"
    t.integer "person_id", null: false
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_person_learn_subjects_on_person_id"
    t.index ["subject_id"], name: "index_person_learn_subjects_on_subject_id"
  end

  create_table "person_teach_subjects", force: :cascade do |t|
    t.date "teach_date"
    t.integer "person_id", null: false
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_person_teach_subjects_on_person_id"
    t.index ["subject_id"], name: "index_person_teach_subjects_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "exams", "subjects"
  add_foreign_key "people", "localities"
  add_foreign_key "person_belongs_to_classrooms", "classrooms"
  add_foreign_key "person_belongs_to_classrooms", "people"
  add_foreign_key "person_evaluate_exams", "exams"
  add_foreign_key "person_evaluate_exams", "people"
  add_foreign_key "person_have_exams", "exams"
  add_foreign_key "person_have_exams", "people"
  add_foreign_key "person_learn_subjects", "people"
  add_foreign_key "person_learn_subjects", "subjects"
  add_foreign_key "person_teach_subjects", "people"
  add_foreign_key "person_teach_subjects", "subjects"
end
