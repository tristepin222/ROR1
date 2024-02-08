require "test_helper"

class PersonHaveExamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_have_exam = person_have_exams(:one)
  end

  test "should get index" do
    get person_have_exams_url
    assert_response :success
  end

  test "should get new" do
    get new_person_have_exam_url
    assert_response :success
  end

  test "should create person_have_exam" do
    assert_difference("PersonHaveExam.count") do
      post person_have_exams_url, params: { person_have_exam: { exam_id: @person_have_exam.exam_id, grade: @person_have_exam.grade, person_id: @person_have_exam.person_id } }
    end

    assert_redirected_to person_have_exam_url(PersonHaveExam.last)
  end

  test "should show person_have_exam" do
    get person_have_exam_url(@person_have_exam)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_have_exam_url(@person_have_exam)
    assert_response :success
  end

  test "should update person_have_exam" do
    patch person_have_exam_url(@person_have_exam), params: { person_have_exam: { exam_id: @person_have_exam.exam_id, grade: @person_have_exam.grade, person_id: @person_have_exam.person_id } }
    assert_redirected_to person_have_exam_url(@person_have_exam)
  end

  test "should destroy person_have_exam" do
    assert_difference("PersonHaveExam.count", -1) do
      delete person_have_exam_url(@person_have_exam)
    end

    assert_redirected_to person_have_exams_url
  end
end
