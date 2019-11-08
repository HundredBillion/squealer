require "application_system_test_case"

class SquealsTest < ApplicationSystemTestCase
  setup do
    @squeal = squeals(:one)
  end

  test "visiting the index" do
    visit squeals_url
    assert_selector "h1", text: "Squeals"
  end

  test "creating a Squeal" do
    visit squeals_url
    click_on "New Squeal"

    fill_in "Comment", with: @squeal.comment
    click_on "Create Squeal"

    assert_text "Squeal was successfully created"
    click_on "Back"
  end

  test "updating a Squeal" do
    visit squeals_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @squeal.comment
    click_on "Update Squeal"

    assert_text "Squeal was successfully updated"
    click_on "Back"
  end

  test "destroying a Squeal" do
    visit squeals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Squeal was successfully destroyed"
  end
end
