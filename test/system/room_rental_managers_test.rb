require "application_system_test_case"

class RoomRentalManagersTest < ApplicationSystemTestCase
  setup do
    @room_rental_manager = room_rental_managers(:one)
  end

  test "visiting the index" do
    visit room_rental_managers_url
    assert_selector "h1", text: "Room Rental Managers"
  end

  test "creating a Room rental manager" do
    visit room_rental_managers_url
    click_on "New Room Rental Manager"

    fill_in "Dayrent", with: @room_rental_manager.dayRent
    fill_in "Deposit", with: @room_rental_manager.deposit
    fill_in "Guest", with: @room_rental_manager.guest_id
    fill_in "Statusrent", with: @room_rental_manager.statusRent
    click_on "Create Room rental manager"

    assert_text "Room rental manager was successfully created"
    click_on "Back"
  end

  test "updating a Room rental manager" do
    visit room_rental_managers_url
    click_on "Edit", match: :first

    fill_in "Dayrent", with: @room_rental_manager.dayRent
    fill_in "Deposit", with: @room_rental_manager.deposit
    fill_in "Guest", with: @room_rental_manager.guest_id
    fill_in "Statusrent", with: @room_rental_manager.statusRent
    click_on "Update Room rental manager"

    assert_text "Room rental manager was successfully updated"
    click_on "Back"
  end

  test "destroying a Room rental manager" do
    visit room_rental_managers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Room rental manager was successfully destroyed"
  end
end
