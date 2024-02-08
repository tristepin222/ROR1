require "application_system_test_case"

class PersonHaveExamsTest < ApplicationSystemTestCase
  setup do
    @person_have_exam = person_have_exams(:one)
  end

  test "visiting the index" do
    visit person_have_exams_url
    assert_selector "h1", text: "Person have exams"
  end

  test "should create person have exam" do
    visit person_have_exams_url
    click_on "New person have exam"

    fill_in "Exam", with: @person_have_exam.exam_id
    fill_in "Grade", with: @person_have_exam.grade
    fill_in "Person", with: @person_have_exam.person_id
    click_on "Create Person have exam"

    assert_text "Person have exam was successfully created"
    click_on "Back"
  end

  test "should update Person have exam" do
    visit person_have_exam_url(@person_have_exam)
    click_on "Edit this person have exam", match: :first

    fill_in "Exam", with: @person_have_exam.exam_id
    fill_in "Grade", with: @person_have_exam.grade
    fill_in "Person", with: @person_have_exam.person_id
    click_on "Update Person have exam"

    assert_text "Person have exam was successfully updated"
    click_on "Back"
  end

  test "should destroy Person have exam" do
    visit person_have_exam_url(@person_have_exam)
    click_on "Destroy this person have exam", match: :first

    assert_text "Person have exam was successfully destroyed"
  end
end
