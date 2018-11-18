require 'test_helper'

class RoomRentalManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_rental_manager = room_rental_managers(:one)
  end

  test "should get index" do
    get room_rental_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_room_rental_manager_url
    assert_response :success
  end

  test "should create room_rental_manager" do
    assert_difference('RoomRentalManager.count') do
      post room_rental_managers_url, params: { room_rental_manager: { dayRent: @room_rental_manager.dayRent, deposit: @room_rental_manager.deposit, guest_id: @room_rental_manager.guest_id, statusRent: @room_rental_manager.statusRent } }
    end

    assert_redirected_to room_rental_manager_url(RoomRentalManager.last)
  end

  test "should show room_rental_manager" do
    get room_rental_manager_url(@room_rental_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_rental_manager_url(@room_rental_manager)
    assert_response :success
  end

  test "should update room_rental_manager" do
    patch room_rental_manager_url(@room_rental_manager), params: { room_rental_manager: { dayRent: @room_rental_manager.dayRent, deposit: @room_rental_manager.deposit, guest_id: @room_rental_manager.guest_id, statusRent: @room_rental_manager.statusRent } }
    assert_redirected_to room_rental_manager_url(@room_rental_manager)
  end

  test "should destroy room_rental_manager" do
    assert_difference('RoomRentalManager.count', -1) do
      delete room_rental_manager_url(@room_rental_manager)
    end

    assert_redirected_to room_rental_managers_url
  end
end
