require "test_helper"

class PersonLearnSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_learn_subject = person_learn_subjects(:one)
  end

  test "should get index" do
    get person_learn_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_person_learn_subject_url
    assert_response :success
  end

  test "should create person_learn_subject" do
    assert_difference("PersonLearnSubject.count") do
      post person_learn_subjects_url, params: { person_learn_subject: { learn_date: @person_learn_subject.learn_date, person_id: @person_learn_subject.person_id, subject_id: @person_learn_subject.subject_id } }
    end

    assert_redirected_to person_learn_subject_url(PersonLearnSubject.last)
  end

  test "should show person_learn_subject" do
    get person_learn_subject_url(@person_learn_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_learn_subject_url(@person_learn_subject)
    assert_response :success
  end

  test "should update person_learn_subject" do
    patch person_learn_subject_url(@person_learn_subject), params: { person_learn_subject: { learn_date: @person_learn_subject.learn_date, person_id: @person_learn_subject.person_id, subject_id: @person_learn_subject.subject_id } }
    assert_redirected_to person_learn_subject_url(@person_learn_subject)
  end

  test "should destroy person_learn_subject" do
    assert_difference("PersonLearnSubject.count", -1) do
      delete person_learn_subject_url(@person_learn_subject)
    end

    assert_redirected_to person_learn_subjects_url
  end
end
