require "application_system_test_case"

class TeachersCohortsTest < ApplicationSystemTestCase
  setup do
    @teachers_cohort = teachers_cohorts(:one)
  end

  test "visiting the index" do
    visit teachers_cohorts_url
    assert_selector "h1", text: "Teachers Cohorts"
  end

  test "creating a Teachers cohort" do
    visit teachers_cohorts_url
    click_on "New Teachers Cohort"

    fill_in "Student Id", with: @teachers_cohort.Student_ID
    fill_in "Teacher Id", with: @teachers_cohort.Teacher_ID
    click_on "Create Teachers cohort"

    assert_text "Teachers cohort was successfully created"
    click_on "Back"
  end

  test "updating a Teachers cohort" do
    visit teachers_cohorts_url
    click_on "Edit", match: :first

    fill_in "Student Id", with: @teachers_cohort.Student_ID
    fill_in "Teacher Id", with: @teachers_cohort.Teacher_ID
    click_on "Update Teachers cohort"

    assert_text "Teachers cohort was successfully updated"
    click_on "Back"
  end

  test "destroying a Teachers cohort" do
    visit teachers_cohorts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teachers cohort was successfully destroyed"
  end
end
