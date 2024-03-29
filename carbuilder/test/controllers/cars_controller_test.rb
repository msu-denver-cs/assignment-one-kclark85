require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car = cars(:one)
    @make_id = makes(:one).id
  end

  test "should get index" do
    get cars_url
    assert_response :success
  end

  test "should get new" do
    get new_car_url
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post cars_url, params: { car: { model: @car.model, vin: @car.vin, make_id: @make_id  } }
    end

    assert_redirected_to car_url(Car.last)
  end

  test "should show car" do
    get car_url(@car,@make)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_url(@car,@makes)
  end

  test "should update car" do
    patch car_url(@car), params: { car: { model: @car.model, vin: @car.vin, make: @car.make.name } }
    assert_redirected_to car_url(@car)
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete car_url(@car)
    end

    assert_redirected_to cars_url
  end

  test "should search car" do
    get search_cars_url
    assert_response :success
  end
  
  test "shouldn't find a missing car" do
    assert Car.where("model like ?", "Not Here").length == 0
  end

  test "should find cars from the fixture" do
    assert Car.where("model like ?", "MyString").length == 1
  end
  
  test "searches always return 200" do
    get search_cars_url, params: {search: "test"}
    assert_response :success
  end

  test "should find MyString" do
    get search_cars_url, params: { search: "MyString"}
    assert_select 'td', 'MyString'
  end

  test "shouldn't find Tesla" do
    get search_cars_url, params: { search: "Tesla" }
    assert_select "td", {count: 0, text: "Tesla"}, "Find no matches"
  end

end
