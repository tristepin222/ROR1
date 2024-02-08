require "application_system_test_case"

class PersonEvaluateExamsTest < ApplicationSystemTestCase
  setup do
    @person_evaluate_exam = person_evaluate_exams(:one)
  end

  test "visiting the index" do
    visit person_evaluate_exams_url
    assert_selector "h1", text: "Person evaluate exams"
  end

  test "should create person evaluate exam" do
    visit person_evaluate_exams_url
    click_on "New person evaluate exam"

    fill_in "Exam date", with: @person_evaluate_exam.exam_date
    fill_in "Exam", with: @person_evaluate_exam.exam_id
    fill_in "Person", with: @person_evaluate_exam.person_id
    click_on "Create Person evaluate exam"

    assert_text "Person evaluate exam was successfully created"
    click_on "Back"
  end

  test "should update Person evaluate exam" do
    visit person_evaluate_exam_url(@person_evaluate_exam)
    click_on "Edit this person evaluate exam", match: :first

    fill_in "Exam date", with: @person_evaluate_exam.exam_date
    fill_in "Exam", with: @person_evaluate_exam.exam_id
    fill_in "Person", with: @person_evaluate_exam.person_id
    click_on "Update Person evaluate exam"

    assert_text "Person evaluate exam was successfully updated"
    click_on "Back"
  end

  test "should destroy Person evaluate exam" do
    visit person_evaluate_exam_url(@person_evaluate_exam)
    click_on "Destroy this person evaluate exam", match: :first

    assert_text "Person evaluate exam was successfully destroyed"
  end
end
