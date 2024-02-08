require "application_system_test_case"

class PersonTeachSubjectsTest < ApplicationSystemTestCase
  setup do
    @person_teach_subject = person_teach_subjects(:one)
  end

  test "visiting the index" do
    visit person_teach_subjects_url
    assert_selector "h1", text: "Person teach subjects"
  end

  test "should create person teach subject" do
    visit person_teach_subjects_url
    click_on "New person teach subject"

    fill_in "Person", with: @person_teach_subject.person_id
    fill_in "Subject", with: @person_teach_subject.subject_id
    fill_in "Teach date", with: @person_teach_subject.teach_date
    click_on "Create Person teach subject"

    assert_text "Person teach subject was successfully created"
    click_on "Back"
  end

  test "should update Person teach subject" do
    visit person_teach_subject_url(@person_teach_subject)
    click_on "Edit this person teach subject", match: :first

    fill_in "Person", with: @person_teach_subject.person_id
    fill_in "Subject", with: @person_teach_subject.subject_id
    fill_in "Teach date", with: @person_teach_subject.teach_date
    click_on "Update Person teach subject"

    assert_text "Person teach subject was successfully updated"
    click_on "Back"
  end

  test "should destroy Person teach subject" do
    visit person_teach_subject_url(@person_teach_subject)
    click_on "Destroy this person teach subject", match: :first

    assert_text "Person teach subject was successfully destroyed"
  end
end
