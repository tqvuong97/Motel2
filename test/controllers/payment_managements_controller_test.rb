require 'test_helper'

class PaymentManagementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_management = payment_managements(:one)
  end

  test "should get index" do
    get payment_managements_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_management_url
    assert_response :success
  end

  test "should create payment_management" do
    assert_difference('PaymentManagement.count') do
      post payment_managements_url, params: { payment_management: { dayPM: @payment_management.dayPM, debt: @payment_management.debt, electricity: @payment_management.electricity, guest_id: @payment_management.guest_id, internet: @payment_management.internet, roomPrice: @payment_management.roomPrice, room_id: @payment_management.room_id, service_id: @payment_management.service_id, water: @payment_management.water } }
    end

    assert_redirected_to payment_management_url(PaymentManagement.last)
  end

  test "should show payment_management" do
    get payment_management_url(@payment_management)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_management_url(@payment_management)
    assert_response :success
  end

  test "should update payment_management" do
    patch payment_management_url(@payment_management), params: { payment_management: { dayPM: @payment_management.dayPM, debt: @payment_management.debt, electricity: @payment_management.electricity, guest_id: @payment_management.guest_id, internet: @payment_management.internet, roomPrice: @payment_management.roomPrice, room_id: @payment_management.room_id, service_id: @payment_management.service_id, water: @payment_management.water } }
    assert_redirected_to payment_management_url(@payment_management)
  end

  test "should destroy payment_management" do
    assert_difference('PaymentManagement.count', -1) do
      delete payment_management_url(@payment_management)
    end

    assert_redirected_to payment_managements_url
  end
end
