require 'test_helper'

class RoomrentalmanagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roomrentalmanager = roomrentalmanagers(:one)
  end

  test "should get index" do
    get roomrentalmanagers_url
    assert_response :success
  end

  test "should get new" do
    get new_roomrentalmanager_url
    assert_response :success
  end

  test "should create roomrentalmanager" do
    assert_difference('Roomrentalmanager.count') do
      post roomrentalmanagers_url, params: { roomrentalmanager: { dayRent: @roomrentalmanager.dayRent, deposit: @roomrentalmanager.deposit, guest_id: @roomrentalmanager.guest_id, statusRent: @roomrentalmanager.statusRent } }
    end

    assert_redirected_to roomrentalmanager_url(Roomrentalmanager.last)
  end

  test "should show roomrentalmanager" do
    get roomrentalmanager_url(@roomrentalmanager)
    assert_response :success
  end

  test "should get edit" do
    get edit_roomrentalmanager_url(@roomrentalmanager)
    assert_response :success
  end

  test "should update roomrentalmanager" do
    patch roomrentalmanager_url(@roomrentalmanager), params: { roomrentalmanager: { dayRent: @roomrentalmanager.dayRent, deposit: @roomrentalmanager.deposit, guest_id: @roomrentalmanager.guest_id, statusRent: @roomrentalmanager.statusRent } }
    assert_redirected_to roomrentalmanager_url(@roomrentalmanager)
  end

  test "should destroy roomrentalmanager" do
    assert_difference('Roomrentalmanager.count', -1) do
      delete roomrentalmanager_url(@roomrentalmanager)
    end

    assert_redirected_to roomrentalmanagers_url
  end
end
