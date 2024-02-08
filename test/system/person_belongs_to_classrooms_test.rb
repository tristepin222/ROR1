require "application_system_test_case"

class PersonBelongsToClassroomsTest < ApplicationSystemTestCase
  setup do
    @person_belongs_to_classroom = person_belongs_to_classrooms(:one)
  end

  test "visiting the index" do
    visit person_belongs_to_classrooms_url
    assert_selector "h1", text: "Person belongs to classrooms"
  end

  test "should create person belongs to classroom" do
    visit person_belongs_to_classrooms_url
    click_on "New person belongs to classroom"

    fill_in "Classroom", with: @person_belongs_to_classroom.classroom_id
    fill_in "End date", with: @person_belongs_to_classroom.end_date
    fill_in "Person", with: @person_belongs_to_classroom.person_id
    fill_in "Start date", with: @person_belongs_to_classroom.start_date
    click_on "Create Person belongs to classroom"

    assert_text "Person belongs to classroom was successfully created"
    click_on "Back"
  end

  test "should update Person belongs to classroom" do
    visit person_belongs_to_classroom_url(@person_belongs_to_classroom)
    click_on "Edit this person belongs to classroom", match: :first

    fill_in "Classroom", with: @person_belongs_to_classroom.classroom_id
    fill_in "End date", with: @person_belongs_to_classroom.end_date
    fill_in "Person", with: @person_belongs_to_classroom.person_id
    fill_in "Start date", with: @person_belongs_to_classroom.start_date
    click_on "Update Person belongs to classroom"

    assert_text "Person belongs to classroom was successfully updated"
    click_on "Back"
  end

  test "should destroy Person belongs to classroom" do
    visit person_belongs_to_classroom_url(@person_belongs_to_classroom)
    click_on "Destroy this person belongs to classroom", match: :first

    assert_text "Person belongs to classroom was successfully destroyed"
  end
end
