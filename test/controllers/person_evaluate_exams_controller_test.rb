require "test_helper"

class PersonEvaluateExamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_evaluate_exam = person_evaluate_exams(:one)
  end

  test "should get index" do
    get person_evaluate_exams_url
    assert_response :success
  end

  test "should get new" do
    get new_person_evaluate_exam_url
    assert_response :success
  end

  test "should create person_evaluate_exam" do
    assert_difference("PersonEvaluateExam.count") do
      post person_evaluate_exams_url, params: { person_evaluate_exam: { exam_date: @person_evaluate_exam.exam_date, exam_id: @person_evaluate_exam.exam_id, person_id: @person_evaluate_exam.person_id } }
    end

    assert_redirected_to person_evaluate_exam_url(PersonEvaluateExam.last)
  end

  test "should show person_evaluate_exam" do
    get person_evaluate_exam_url(@person_evaluate_exam)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_evaluate_exam_url(@person_evaluate_exam)
    assert_response :success
  end

  test "should update person_evaluate_exam" do
    patch person_evaluate_exam_url(@person_evaluate_exam), params: { person_evaluate_exam: { exam_date: @person_evaluate_exam.exam_date, exam_id: @person_evaluate_exam.exam_id, person_id: @person_evaluate_exam.person_id } }
    assert_redirected_to person_evaluate_exam_url(@person_evaluate_exam)
  end

  test "should destroy person_evaluate_exam" do
    assert_difference("PersonEvaluateExam.count", -1) do
      delete person_evaluate_exam_url(@person_evaluate_exam)
    end

    assert_redirected_to person_evaluate_exams_url
  end
end
