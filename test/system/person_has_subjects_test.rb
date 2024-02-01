require "application_system_test_case"

class PersonHasSubjectsTest < ApplicationSystemTestCase
  setup do
    @person_has_subject = person_has_subjects(:one)
  end

  test "visiting the index" do
    visit person_has_subjects_url
    assert_selector "h1", text: "Person has subjects"
  end

  test "should create person has subject" do
    visit person_has_subjects_url
    click_on "New person has subject"

    fill_in "Current class", with: @person_has_subject.current_class
    fill_in "Person", with: @person_has_subject.person_id
    fill_in "Subject", with: @person_has_subject.subject_id
    click_on "Create Person has subject"

    assert_text "Person has subject was successfully created"
    click_on "Back"
  end

  test "should update Person has subject" do
    visit person_has_subject_url(@person_has_subject)
    click_on "Edit this person has subject", match: :first

    fill_in "Current class", with: @person_has_subject.current_class
    fill_in "Person", with: @person_has_subject.person_id
    fill_in "Subject", with: @person_has_subject.subject_id
    click_on "Update Person has subject"

    assert_text "Person has subject was successfully updated"
    click_on "Back"
  end

  test "should destroy Person has subject" do
    visit person_has_subject_url(@person_has_subject)
    click_on "Destroy this person has subject", match: :first

    assert_text "Person has subject was successfully destroyed"
  end
end
