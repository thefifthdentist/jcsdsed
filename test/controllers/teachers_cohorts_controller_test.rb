require 'test_helper'

class TeachersCohortsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teachers_cohort = teachers_cohorts(:one)
  end

  test "should get index" do
    get teachers_cohorts_url
    assert_response :success
  end

  test "should get new" do
    get new_teachers_cohort_url
    assert_response :success
  end

  test "should create teachers_cohort" do
    assert_difference('TeachersCohort.count') do
      post teachers_cohorts_url, params: { teachers_cohort: { Student_ID: @teachers_cohort.Student_ID, Teacher_ID: @teachers_cohort.Teacher_ID } }
    end

    assert_redirected_to teachers_cohort_url(TeachersCohort.last)
  end

  test "should show teachers_cohort" do
    get teachers_cohort_url(@teachers_cohort)
    assert_response :success
  end

  test "should get edit" do
    get edit_teachers_cohort_url(@teachers_cohort)
    assert_response :success
  end

  test "should update teachers_cohort" do
    patch teachers_cohort_url(@teachers_cohort), params: { teachers_cohort: { Student_ID: @teachers_cohort.Student_ID, Teacher_ID: @teachers_cohort.Teacher_ID } }
    assert_redirected_to teachers_cohort_url(@teachers_cohort)
  end

  test "should destroy teachers_cohort" do
    assert_difference('TeachersCohort.count', -1) do
      delete teachers_cohort_url(@teachers_cohort)
    end

    assert_redirected_to teachers_cohorts_url
  end
end
