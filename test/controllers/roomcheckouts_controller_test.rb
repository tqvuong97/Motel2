require 'test_helper'

class RoomcheckoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roomcheckout = roomcheckouts(:one)
  end

  test "should get index" do
    get roomcheckouts_url
    assert_response :success
  end

  test "should get new" do
    get new_roomcheckout_url
    assert_response :success
  end

  test "should create roomcheckout" do
    assert_difference('Roomcheckout.count') do
      post roomcheckouts_url, params: { roomcheckout: { dayRco: @roomcheckout.dayRco, guest_id: @roomcheckout.guest_id, note: @roomcheckout.note } }
    end

    assert_redirected_to roomcheckout_url(Roomcheckout.last)
  end

  test "should show roomcheckout" do
    get roomcheckout_url(@roomcheckout)
    assert_response :success
  end

  test "should get edit" do
    get edit_roomcheckout_url(@roomcheckout)
    assert_response :success
  end

  test "should update roomcheckout" do
    patch roomcheckout_url(@roomcheckout), params: { roomcheckout: { dayRco: @roomcheckout.dayRco, guest_id: @roomcheckout.guest_id, note: @roomcheckout.note } }
    assert_redirected_to roomcheckout_url(@roomcheckout)
  end

  test "should destroy roomcheckout" do
    assert_difference('Roomcheckout.count', -1) do
      delete roomcheckout_url(@roomcheckout)
    end

    assert_redirected_to roomcheckouts_url
  end
end
