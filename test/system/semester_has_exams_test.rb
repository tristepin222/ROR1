require "application_system_test_case"

class SemesterHasExamsTest < ApplicationSystemTestCase
  setup do
    @semester_has_exam = semester_has_exams(:one)
  end

  test "visiting the index" do
    visit semester_has_exams_url
    assert_selector "h1", text: "Semester has exams"
  end

  test "should create semester has exam" do
    visit semester_has_exams_url
    click_on "New semester has exam"

    fill_in "Exam", with: @semester_has_exam.exam_id
    fill_in "Semester", with: @semester_has_exam.semester_id
    click_on "Create Semester has exam"

    assert_text "Semester has exam was successfully created"
    click_on "Back"
  end

  test "should update Semester has exam" do
    visit semester_has_exam_url(@semester_has_exam)
    click_on "Edit this semester has exam", match: :first

    fill_in "Exam", with: @semester_has_exam.exam_id
    fill_in "Semester", with: @semester_has_exam.semester_id
    click_on "Update Semester has exam"

    assert_text "Semester has exam was successfully updated"
    click_on "Back"
  end

  test "should destroy Semester has exam" do
    visit semester_has_exam_url(@semester_has_exam)
    click_on "Destroy this semester has exam", match: :first

    assert_text "Semester has exam was successfully destroyed"
  end
end
