require 'test_helper'

class MakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @make = makes(:one)
  end

  test "should get index" do
    get makes_url
    assert_response :success
  end

  test "should get new" do
    get new_make_url
    assert_response :success
  end

  test "should create make" do
    assert_difference('Make.count') do
      post makes_url, params: { make: { country: @make.country, name: @make.name } }
    end

    assert_redirected_to make_url(Make.last)
  end

  test "should show make" do
    get make_url(@make)
    assert_response :success
  end

  test "should get edit" do
    get edit_make_url(@make)
    assert_response :success
  end

  test "should update make" do
    patch make_url(@make), params: { make: { country: @make.country, name: @make.name } }
    assert_redirected_to make_url(@make)
  end

  test "should destroy make" do
    assert_difference('Make.count', -1) do
      delete make_url(@make)
    end

    assert_redirected_to makes_url
  end

  test "should search make" do
    get search_makes_url
    assert_response :success
  end

  test "shouldn't find a missing make" do
    assert Make.where("name like ?", "Not Here").length == 0
  end

  test "should find makes from the fixture" do
    assert Make.where("name like ?", "MyString").length == 2
  end
  
  test "searches always return 200" do
    get search_makes_url, params: {search: "test"}
    assert_response :success
  end

  test "should find MyString" do
    get search_makes_url, params: { search: "MyString"}
    assert_select 'td', 'MyString'
  end

  test "shouldn't find Tesla" do
    get search_makes_url, params: { search: "Tesla" }
    assert_select "td", {count: 0, text: "Tesla"}, "Find no matches"
  end
end
