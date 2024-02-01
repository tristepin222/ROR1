require "application_system_test_case"

class PersonHasExamsTest < ApplicationSystemTestCase
  setup do
    @person_has_exam = person_has_exams(:one)
  end

  test "visiting the index" do
    visit person_has_exams_url
    assert_selector "h1", text: "Person has exams"
  end

  test "should create person has exam" do
    visit person_has_exams_url
    click_on "New person has exam"

    fill_in "Exam", with: @person_has_exam.exam_id
    fill_in "Grade", with: @person_has_exam.grade
    fill_in "Person", with: @person_has_exam.person_id
    click_on "Create Person has exam"

    assert_text "Person has exam was successfully created"
    click_on "Back"
  end

  test "should update Person has exam" do
    visit person_has_exam_url(@person_has_exam)
    click_on "Edit this person has exam", match: :first

    fill_in "Exam", with: @person_has_exam.exam_id
    fill_in "Grade", with: @person_has_exam.grade
    fill_in "Person", with: @person_has_exam.person_id
    click_on "Update Person has exam"

    assert_text "Person has exam was successfully updated"
    click_on "Back"
  end

  test "should destroy Person has exam" do
    visit person_has_exam_url(@person_has_exam)
    click_on "Destroy this person has exam", match: :first

    assert_text "Person has exam was successfully destroyed"
  end
end
