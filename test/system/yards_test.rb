require "application_system_test_case"

class YardsTest < ApplicationSystemTestCase
  setup do
    @yard = yards(:one)
  end

  test "visiting the index" do
    visit yards_url
    assert_selector "h1", text: "Yards"
  end

  test "creating a Yard" do
    visit yards_url
    click_on "New Yard"

    fill_in "Area", with: @yard.area
    fill_in "History", with: @yard.history
    fill_in "Name", with: @yard.name
    fill_in "Phone Number", with: @yard.phone_number
    fill_in "Price", with: @yard.price
    fill_in "Status", with: @yard.status
    click_on "Create Yard"

    assert_text "Yard was successfully created"
    click_on "Back"
  end

  test "updating a Yard" do
    visit yards_url
    click_on "Edit", match: :first

    fill_in "Area", with: @yard.area
    fill_in "History", with: @yard.history
    fill_in "Name", with: @yard.name
    fill_in "Phone Number", with: @yard.phone_number
    fill_in "Price", with: @yard.price
    fill_in "Status", with: @yard.status
    click_on "Update Yard"

    assert_text "Yard was successfully updated"
    click_on "Back"
  end

  test "destroying a Yard" do
    visit yards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yard was successfully destroyed"
  end
end
