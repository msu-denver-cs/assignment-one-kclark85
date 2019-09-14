require "application_system_test_case"

class CarPartsTest < ApplicationSystemTestCase
  setup do
    @car_part = car_parts(:one)
  end

  test "visiting the index" do
    visit car_parts_url
    assert_selector "h1", text: "Car Parts"
  end

  test "creating a Car part" do
    visit car_parts_url
    click_on "New Car Part"

    fill_in "Car", with: @car_part.car_id
    fill_in "Part", with: @car_part.part
    click_on "Create Car part"

    assert_text "Car part was successfully created"
    click_on "Back"
  end

  test "updating a Car part" do
    visit car_parts_url
    click_on "Edit", match: :first

    fill_in "Car", with: @car_part.car_id
    fill_in "Part", with: @car_part.part
    click_on "Update Car part"

    assert_text "Car part was successfully updated"
    click_on "Back"
  end

  test "destroying a Car part" do
    visit car_parts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car part was successfully destroyed"
  end
end
