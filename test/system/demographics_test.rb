require "application_system_test_case"

class DemographicsTest < ApplicationSystemTestCase
  setup do
    @demographic = demographics(:one)
  end

  test "visiting the index" do
    visit demographics_url
    assert_selector "h1", text: "Demographics"
  end

  test "creating a Demographic" do
    visit demographics_url
    click_on "New Demographic"

    fill_in "User", with: @demographic.user_id
    click_on "Create Demographic"

    assert_text "Demographic was successfully created"
    click_on "Back"
  end

  test "updating a Demographic" do
    visit demographics_url
    click_on "Edit", match: :first

    fill_in "User", with: @demographic.user_id
    click_on "Update Demographic"

    assert_text "Demographic was successfully updated"
    click_on "Back"
  end

  test "destroying a Demographic" do
    visit demographics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Demographic was successfully destroyed"
  end
end
