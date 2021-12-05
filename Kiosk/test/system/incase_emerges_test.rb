require "application_system_test_case"

class IncaseEmergesTest < ApplicationSystemTestCase
  setup do
    @incase_emerge = incase_emerges(:one)
  end

  test "visiting the index" do
    visit incase_emerges_url
    assert_selector "h1", text: "Incase Emerges"
  end

  test "creating a Incase emerge" do
    visit incase_emerges_url
    click_on "New Incase Emerge"

    fill_in "User", with: @incase_emerge.user_id
    click_on "Create Incase emerge"

    assert_text "Incase emerge was successfully created"
    click_on "Back"
  end

  test "updating a Incase emerge" do
    visit incase_emerges_url
    click_on "Edit", match: :first

    fill_in "User", with: @incase_emerge.user_id
    click_on "Update Incase emerge"

    assert_text "Incase emerge was successfully updated"
    click_on "Back"
  end

  test "destroying a Incase emerge" do
    visit incase_emerges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incase emerge was successfully destroyed"
  end
end
