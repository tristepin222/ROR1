require "test_helper"

class PersonHasExamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_has_exam = person_has_exams(:one)
  end

  test "should get index" do
    get person_has_exams_url
    assert_response :success
  end

  test "should get new" do
    get new_person_has_exam_url
    assert_response :success
  end

  test "should create person_has_exam" do
    assert_difference("PersonHasExam.count") do
      post person_has_exams_url, params: { person_has_exam: { exam_id: @person_has_exam.exam_id, grade: @person_has_exam.grade, person_id: @person_has_exam.person_id } }
    end

    assert_redirected_to person_has_exam_url(PersonHasExam.last)
  end

  test "should show person_has_exam" do
    get person_has_exam_url(@person_has_exam)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_has_exam_url(@person_has_exam)
    assert_response :success
  end

  test "should update person_has_exam" do
    patch person_has_exam_url(@person_has_exam), params: { person_has_exam: { exam_id: @person_has_exam.exam_id, grade: @person_has_exam.grade, person_id: @person_has_exam.person_id } }
    assert_redirected_to person_has_exam_url(@person_has_exam)
  end

  test "should destroy person_has_exam" do
    assert_difference("PersonHasExam.count", -1) do
      delete person_has_exam_url(@person_has_exam)
    end

    assert_redirected_to person_has_exams_url
  end
end
