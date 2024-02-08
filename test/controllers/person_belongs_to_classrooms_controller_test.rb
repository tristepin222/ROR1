require "test_helper"

class PersonBelongsToClassroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_belongs_to_classroom = person_belongs_to_classrooms(:one)
  end

  test "should get index" do
    get person_belongs_to_classrooms_url
    assert_response :success
  end

  test "should get new" do
    get new_person_belongs_to_classroom_url
    assert_response :success
  end

  test "should create person_belongs_to_classroom" do
    assert_difference("PersonBelongsToClassroom.count") do
      post person_belongs_to_classrooms_url, params: { person_belongs_to_classroom: { classroom_id: @person_belongs_to_classroom.classroom_id, end_date: @person_belongs_to_classroom.end_date, person_id: @person_belongs_to_classroom.person_id, start_date: @person_belongs_to_classroom.start_date } }
    end

    assert_redirected_to person_belongs_to_classroom_url(PersonBelongsToClassroom.last)
  end

  test "should show person_belongs_to_classroom" do
    get person_belongs_to_classroom_url(@person_belongs_to_classroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_belongs_to_classroom_url(@person_belongs_to_classroom)
    assert_response :success
  end

  test "should update person_belongs_to_classroom" do
    patch person_belongs_to_classroom_url(@person_belongs_to_classroom), params: { person_belongs_to_classroom: { classroom_id: @person_belongs_to_classroom.classroom_id, end_date: @person_belongs_to_classroom.end_date, person_id: @person_belongs_to_classroom.person_id, start_date: @person_belongs_to_classroom.start_date } }
    assert_redirected_to person_belongs_to_classroom_url(@person_belongs_to_classroom)
  end

  test "should destroy person_belongs_to_classroom" do
    assert_difference("PersonBelongsToClassroom.count", -1) do
      delete person_belongs_to_classroom_url(@person_belongs_to_classroom)
    end

    assert_redirected_to person_belongs_to_classrooms_url
  end
end
