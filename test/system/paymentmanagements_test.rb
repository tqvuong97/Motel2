require "application_system_test_case"

class PaymentmanagementsTest < ApplicationSystemTestCase
  setup do
    @paymentmanagement = paymentmanagements(:one)
  end

  test "visiting the index" do
    visit paymentmanagements_url
    assert_selector "h1", text: "Paymentmanagements"
  end

  test "creating a Paymentmanagement" do
    visit paymentmanagements_url
    click_on "New Paymentmanagement"

    fill_in "Daypm", with: @paymentmanagement.dayPM
    fill_in "Debt", with: @paymentmanagement.debt
    fill_in "Electricity", with: @paymentmanagement.electricity
    fill_in "Guest", with: @paymentmanagement.guest_id
    fill_in "Internet", with: @paymentmanagement.internet
    fill_in "Roomprice", with: @paymentmanagement.roomPrice
    fill_in "Room", with: @paymentmanagement.room_id
    fill_in "Service", with: @paymentmanagement.service_id
    fill_in "Water", with: @paymentmanagement.water
    click_on "Create Paymentmanagement"

    assert_text "Paymentmanagement was successfully created"
    click_on "Back"
  end

  test "updating a Paymentmanagement" do
    visit paymentmanagements_url
    click_on "Edit", match: :first

    fill_in "Daypm", with: @paymentmanagement.dayPM
    fill_in "Debt", with: @paymentmanagement.debt
    fill_in "Electricity", with: @paymentmanagement.electricity
    fill_in "Guest", with: @paymentmanagement.guest_id
    fill_in "Internet", with: @paymentmanagement.internet
    fill_in "Roomprice", with: @paymentmanagement.roomPrice
    fill_in "Room", with: @paymentmanagement.room_id
    fill_in "Service", with: @paymentmanagement.service_id
    fill_in "Water", with: @paymentmanagement.water
    click_on "Update Paymentmanagement"

    assert_text "Paymentmanagement was successfully updated"
    click_on "Back"
  end

  test "destroying a Paymentmanagement" do
    visit paymentmanagements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paymentmanagement was successfully destroyed"
  end
end
