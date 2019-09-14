require 'test_helper'

class CarPartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_part = car_parts(:one)
  end

  test "should get index" do
    get car_parts_url
    assert_response :success
  end

  test "should get new" do
    get new_car_part_url
    assert_response :success
  end

  test "should create car_part" do
    assert_difference('CarPart.count') do
      post car_parts_url, params: { car_part: { car_id: @car_part.car_id, part: @car_part.part } }
    end

    assert_redirected_to car_part_url(CarPart.last)
  end

  test "should show car_part" do
    get car_part_url(@car_part)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_part_url(@car_part)
    assert_response :success
  end

  test "should update car_part" do
    patch car_part_url(@car_part), params: { car_part: { car_id: @car_part.car_id, part: @car_part.part } }
    assert_redirected_to car_part_url(@car_part)
  end

  test "should destroy car_part" do
    assert_difference('CarPart.count', -1) do
      delete car_part_url(@car_part)
    end

    assert_redirected_to car_parts_url
  end
end
