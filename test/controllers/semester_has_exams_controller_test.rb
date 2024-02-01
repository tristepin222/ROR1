require "test_helper"

class SemesterHasExamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @semester_has_exam = semester_has_exams(:one)
  end

  test "should get index" do
    get semester_has_exams_url
    assert_response :success
  end

  test "should get new" do
    get new_semester_has_exam_url
    assert_response :success
  end

  test "should create semester_has_exam" do
    assert_difference("SemesterHasExam.count") do
      post semester_has_exams_url, params: { semester_has_exam: { exam_id: @semester_has_exam.exam_id, semester_id: @semester_has_exam.semester_id } }
    end

    assert_redirected_to semester_has_exam_url(SemesterHasExam.last)
  end

  test "should show semester_has_exam" do
    get semester_has_exam_url(@semester_has_exam)
    assert_response :success
  end

  test "should get edit" do
    get edit_semester_has_exam_url(@semester_has_exam)
    assert_response :success
  end

  test "should update semester_has_exam" do
    patch semester_has_exam_url(@semester_has_exam), params: { semester_has_exam: { exam_id: @semester_has_exam.exam_id, semester_id: @semester_has_exam.semester_id } }
    assert_redirected_to semester_has_exam_url(@semester_has_exam)
  end

  test "should destroy semester_has_exam" do
    assert_difference("SemesterHasExam.count", -1) do
      delete semester_has_exam_url(@semester_has_exam)
    end

    assert_redirected_to semester_has_exams_url
  end
end
