require 'test_helper'

class RoomCheckOutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_check_out = room_check_outs(:one)
  end

  test "should get index" do
    get room_check_outs_url
    assert_response :success
  end

  test "should get new" do
    get new_room_check_out_url
    assert_response :success
  end

  test "should create room_check_out" do
    assert_difference('RoomCheckOut.count') do
      post room_check_outs_url, params: { room_check_out: { dayRco: @room_check_out.dayRco, guest_id: @room_check_out.guest_id, note: @room_check_out.note } }
    end

    assert_redirected_to room_check_out_url(RoomCheckOut.last)
  end

  test "should show room_check_out" do
    get room_check_out_url(@room_check_out)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_check_out_url(@room_check_out)
    assert_response :success
  end

  test "should update room_check_out" do
    patch room_check_out_url(@room_check_out), params: { room_check_out: { dayRco: @room_check_out.dayRco, guest_id: @room_check_out.guest_id, note: @room_check_out.note } }
    assert_redirected_to room_check_out_url(@room_check_out)
  end

  test "should destroy room_check_out" do
    assert_difference('RoomCheckOut.count', -1) do
      delete room_check_out_url(@room_check_out)
    end

    assert_redirected_to room_check_outs_url
  end
end
