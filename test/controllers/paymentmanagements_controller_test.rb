require 'test_helper'

class PaymentmanagementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paymentmanagement = paymentmanagements(:one)
  end

  test "should get index" do
    get paymentmanagements_url
    assert_response :success
  end

  test "should get new" do
    get new_paymentmanagement_url
    assert_response :success
  end

  test "should create paymentmanagement" do
    assert_difference('Paymentmanagement.count') do
      post paymentmanagements_url, params: { paymentmanagement: { dayPM: @paymentmanagement.dayPM, debt: @paymentmanagement.debt, electricity: @paymentmanagement.electricity, guest_id: @paymentmanagement.guest_id, internet: @paymentmanagement.internet, roomPrice: @paymentmanagement.roomPrice, room_id: @paymentmanagement.room_id, service_id: @paymentmanagement.service_id, water: @paymentmanagement.water } }
    end

    assert_redirected_to paymentmanagement_url(Paymentmanagement.last)
  end

  test "should show paymentmanagement" do
    get paymentmanagement_url(@paymentmanagement)
    assert_response :success
  end

  test "should get edit" do
    get edit_paymentmanagement_url(@paymentmanagement)
    assert_response :success
  end

  test "should update paymentmanagement" do
    patch paymentmanagement_url(@paymentmanagement), params: { paymentmanagement: { dayPM: @paymentmanagement.dayPM, debt: @paymentmanagement.debt, electricity: @paymentmanagement.electricity, guest_id: @paymentmanagement.guest_id, internet: @paymentmanagement.internet, roomPrice: @paymentmanagement.roomPrice, room_id: @paymentmanagement.room_id, service_id: @paymentmanagement.service_id, water: @paymentmanagement.water } }
    assert_redirected_to paymentmanagement_url(@paymentmanagement)
  end

  test "should destroy paymentmanagement" do
    assert_difference('Paymentmanagement.count', -1) do
      delete paymentmanagement_url(@paymentmanagement)
    end

    assert_redirected_to paymentmanagements_url
  end
end
