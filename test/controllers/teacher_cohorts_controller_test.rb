require 'test_helper'

class TeacherCohortsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_cohort = teacher_cohorts(:one)
  end

  test "should get index" do
    get teacher_cohorts_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_cohort_url
    assert_response :success
  end

  test "should create teacher_cohort" do
    assert_difference('TeacherCohort.count') do
      post teacher_cohorts_url, params: { teacher_cohort: { Cohort_ID: @teacher_cohort.Cohort_ID, Teacher_ID: @teacher_cohort.Teacher_ID } }
    end

    assert_redirected_to teacher_cohort_url(TeacherCohort.last)
  end

  test "should show teacher_cohort" do
    get teacher_cohort_url(@teacher_cohort)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_cohort_url(@teacher_cohort)
    assert_response :success
  end

  test "should update teacher_cohort" do
    patch teacher_cohort_url(@teacher_cohort), params: { teacher_cohort: { Cohort_ID: @teacher_cohort.Cohort_ID, Teacher_ID: @teacher_cohort.Teacher_ID } }
    assert_redirected_to teacher_cohort_url(@teacher_cohort)
  end

  test "should destroy teacher_cohort" do
    assert_difference('TeacherCohort.count', -1) do
      delete teacher_cohort_url(@teacher_cohort)
    end

    assert_redirected_to teacher_cohorts_url
  end
end
