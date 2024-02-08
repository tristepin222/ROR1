require "application_system_test_case"

class PersonLearnSubjectsTest < ApplicationSystemTestCase
  setup do
    @person_learn_subject = person_learn_subjects(:one)
  end

  test "visiting the index" do
    visit person_learn_subjects_url
    assert_selector "h1", text: "Person learn subjects"
  end

  test "should create person learn subject" do
    visit person_learn_subjects_url
    click_on "New person learn subject"

    fill_in "Learn date", with: @person_learn_subject.learn_date
    fill_in "Person", with: @person_learn_subject.person_id
    fill_in "Subject", with: @person_learn_subject.subject_id
    click_on "Create Person learn subject"

    assert_text "Person learn subject was successfully created"
    click_on "Back"
  end

  test "should update Person learn subject" do
    visit person_learn_subject_url(@person_learn_subject)
    click_on "Edit this person learn subject", match: :first

    fill_in "Learn date", with: @person_learn_subject.learn_date
    fill_in "Person", with: @person_learn_subject.person_id
    fill_in "Subject", with: @person_learn_subject.subject_id
    click_on "Update Person learn subject"

    assert_text "Person learn subject was successfully updated"
    click_on "Back"
  end

  test "should destroy Person learn subject" do
    visit person_learn_subject_url(@person_learn_subject)
    click_on "Destroy this person learn subject", match: :first

    assert_text "Person learn subject was successfully destroyed"
  end
end
