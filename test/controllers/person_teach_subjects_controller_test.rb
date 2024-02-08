require "test_helper"

class PersonTeachSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_teach_subject = person_teach_subjects(:one)
  end

  test "should get index" do
    get person_teach_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_person_teach_subject_url
    assert_response :success
  end

  test "should create person_teach_subject" do
    assert_difference("PersonTeachSubject.count") do
      post person_teach_subjects_url, params: { person_teach_subject: { person_id: @person_teach_subject.person_id, subject_id: @person_teach_subject.subject_id, teach_date: @person_teach_subject.teach_date } }
    end

    assert_redirected_to person_teach_subject_url(PersonTeachSubject.last)
  end

  test "should show person_teach_subject" do
    get person_teach_subject_url(@person_teach_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_teach_subject_url(@person_teach_subject)
    assert_response :success
  end

  test "should update person_teach_subject" do
    patch person_teach_subject_url(@person_teach_subject), params: { person_teach_subject: { person_id: @person_teach_subject.person_id, subject_id: @person_teach_subject.subject_id, teach_date: @person_teach_subject.teach_date } }
    assert_redirected_to person_teach_subject_url(@person_teach_subject)
  end

  test "should destroy person_teach_subject" do
    assert_difference("PersonTeachSubject.count", -1) do
      delete person_teach_subject_url(@person_teach_subject)
    end

    assert_redirected_to person_teach_subjects_url
  end
end
