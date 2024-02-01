require "test_helper"

class PersonHasSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_has_subject = person_has_subjects(:one)
  end

  test "should get index" do
    get person_has_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_person_has_subject_url
    assert_response :success
  end

  test "should create person_has_subject" do
    assert_difference("PersonHasSubject.count") do
      post person_has_subjects_url, params: { person_has_subject: { current_class: @person_has_subject.current_class, person_id: @person_has_subject.person_id, subject_id: @person_has_subject.subject_id } }
    end

    assert_redirected_to person_has_subject_url(PersonHasSubject.last)
  end

  test "should show person_has_subject" do
    get person_has_subject_url(@person_has_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_has_subject_url(@person_has_subject)
    assert_response :success
  end

  test "should update person_has_subject" do
    patch person_has_subject_url(@person_has_subject), params: { person_has_subject: { current_class: @person_has_subject.current_class, person_id: @person_has_subject.person_id, subject_id: @person_has_subject.subject_id } }
    assert_redirected_to person_has_subject_url(@person_has_subject)
  end

  test "should destroy person_has_subject" do
    assert_difference("PersonHasSubject.count", -1) do
      delete person_has_subject_url(@person_has_subject)
    end

    assert_redirected_to person_has_subjects_url
  end
end
