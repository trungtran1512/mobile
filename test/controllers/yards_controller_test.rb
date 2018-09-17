require 'test_helper'

class YardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yard = yards(:one)
  end

  test "should get index" do
    get yards_url
    assert_response :success
  end

  test "should get new" do
    get new_yard_url
    assert_response :success
  end

  test "should create yard" do
    assert_difference('Yard.count') do
      post yards_url, params: { yard: { area: @yard.area, history: @yard.history, name: @yard.name, phone_number: @yard.phone_number, price: @yard.price, status: @yard.status } }
    end

    assert_redirected_to yard_url(Yard.last)
  end

  test "should show yard" do
    get yard_url(@yard)
    assert_response :success
  end

  test "should get edit" do
    get edit_yard_url(@yard)
    assert_response :success
  end

  test "should update yard" do
    patch yard_url(@yard), params: { yard: { area: @yard.area, history: @yard.history, name: @yard.name, phone_number: @yard.phone_number, price: @yard.price, status: @yard.status } }
    assert_redirected_to yard_url(@yard)
  end

  test "should destroy yard" do
    assert_difference('Yard.count', -1) do
      delete yard_url(@yard)
    end

    assert_redirected_to yards_url
  end
end
