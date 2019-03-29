require "application_system_test_case"

class CleanersTest < ApplicationSystemTestCase
  setup do
    @cleaner = cleaners(:one)
  end

  test "visiting the index" do
    visit cleaners_url
    assert_selector "h1", text: "Cleaners"
  end

  test "creating a Cleaner" do
    visit cleaners_url
    click_on "New Cleaner"

    fill_in "First name", with: @cleaner.first_name
    fill_in "Last name", with: @cleaner.last_name
    fill_in "Quality score", with: @cleaner.quality_score
    click_on "Create Cleaner"

    assert_text "Cleaner was successfully created"
    click_on "Back"
  end

  test "updating a Cleaner" do
    visit cleaners_url
    click_on "Edit", match: :first

    fill_in "First name", with: @cleaner.first_name
    fill_in "Last name", with: @cleaner.last_name
    fill_in "Quality score", with: @cleaner.quality_score
    click_on "Update Cleaner"

    assert_text "Cleaner was successfully updated"
    click_on "Back"
  end

  test "destroying a Cleaner" do
    visit cleaners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cleaner was successfully destroyed"
  end
end
