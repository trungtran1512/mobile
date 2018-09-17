require "application_system_test_case"

class TeamsTest < ApplicationSystemTestCase
  setup do
    @team = teams(:one)
  end

  test "visiting the index" do
    visit teams_url
    assert_selector "h1", text: "Teams"
  end

  test "creating a Team" do
    visit teams_url
    click_on "New Team"

    fill_in "History", with: @team.history
    fill_in "Member", with: @team.member
    fill_in "Motes", with: @team.motes
    fill_in "Name", with: @team.name
    fill_in "Phone Number", with: @team.phone_number
    fill_in "Type Sex", with: @team.type_sex
    fill_in "Type Yard", with: @team.type_yard
    click_on "Create Team"

    assert_text "Team was successfully created"
    click_on "Back"
  end

  test "updating a Team" do
    visit teams_url
    click_on "Edit", match: :first

    fill_in "History", with: @team.history
    fill_in "Member", with: @team.member
    fill_in "Motes", with: @team.motes
    fill_in "Name", with: @team.name
    fill_in "Phone Number", with: @team.phone_number
    fill_in "Type Sex", with: @team.type_sex
    fill_in "Type Yard", with: @team.type_yard
    click_on "Update Team"

    assert_text "Team was successfully updated"
    click_on "Back"
  end

  test "destroying a Team" do
    visit teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team was successfully destroyed"
  end
end
