require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get root_path
    assert_response :success
    assert_select "title", "Design App"
  end

  #   test "should get help" do
  #   get menu_help_url
  #   assert_response :success
  #   assert_select "title", "Help | Design App"
  # end

  #  test "should get about" do
  #   get menu_about_url
  #   assert_response :success
  #   assert_select "title", "About | Design App"
  # end

  # test "should get contact" do
  #   get menu_contact_url
  #   assert_response :success
  #   assert_select "title", "Contact | Design App"
  # end
end
