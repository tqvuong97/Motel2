require "application_system_test_case"

class PaymentManagementsTest < ApplicationSystemTestCase
  setup do
    @payment_management = payment_managements(:one)
  end

  test "visiting the index" do
    visit payment_managements_url
    assert_selector "h1", text: "Payment Managements"
  end

  test "creating a Payment management" do
    visit payment_managements_url
    click_on "New Payment Management"

    fill_in "Daypm", with: @payment_management.dayPM
    fill_in "Debt", with: @payment_management.debt
    fill_in "Electricity", with: @payment_management.electricity
    fill_in "Guest", with: @payment_management.guest_id
    fill_in "Internet", with: @payment_management.internet
    fill_in "Roomprice", with: @payment_management.roomPrice
    fill_in "Room", with: @payment_management.room_id
    fill_in "Service", with: @payment_management.service_id
    fill_in "Water", with: @payment_management.water
    click_on "Create Payment management"

    assert_text "Payment management was successfully created"
    click_on "Back"
  end

  test "updating a Payment management" do
    visit payment_managements_url
    click_on "Edit", match: :first

    fill_in "Daypm", with: @payment_management.dayPM
    fill_in "Debt", with: @payment_management.debt
    fill_in "Electricity", with: @payment_management.electricity
    fill_in "Guest", with: @payment_management.guest_id
    fill_in "Internet", with: @payment_management.internet
    fill_in "Roomprice", with: @payment_management.roomPrice
    fill_in "Room", with: @payment_management.room_id
    fill_in "Service", with: @payment_management.service_id
    fill_in "Water", with: @payment_management.water
    click_on "Update Payment management"

    assert_text "Payment management was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment management" do
    visit payment_managements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment management was successfully destroyed"
  end
end
