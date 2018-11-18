require "application_system_test_case"

class RoomrentalmanagersTest < ApplicationSystemTestCase
  setup do
    @roomrentalmanager = roomrentalmanagers(:one)
  end

  test "visiting the index" do
    visit roomrentalmanagers_url
    assert_selector "h1", text: "Roomrentalmanagers"
  end

  test "creating a Roomrentalmanager" do
    visit roomrentalmanagers_url
    click_on "New Roomrentalmanager"

    fill_in "Dayrent", with: @roomrentalmanager.dayRent
    fill_in "Deposit", with: @roomrentalmanager.deposit
    fill_in "Guest", with: @roomrentalmanager.guest_id
    fill_in "Statusrent", with: @roomrentalmanager.statusRent
    click_on "Create Roomrentalmanager"

    assert_text "Roomrentalmanager was successfully created"
    click_on "Back"
  end

  test "updating a Roomrentalmanager" do
    visit roomrentalmanagers_url
    click_on "Edit", match: :first

    fill_in "Dayrent", with: @roomrentalmanager.dayRent
    fill_in "Deposit", with: @roomrentalmanager.deposit
    fill_in "Guest", with: @roomrentalmanager.guest_id
    fill_in "Statusrent", with: @roomrentalmanager.statusRent
    click_on "Update Roomrentalmanager"

    assert_text "Roomrentalmanager was successfully updated"
    click_on "Back"
  end

  test "destroying a Roomrentalmanager" do
    visit roomrentalmanagers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roomrentalmanager was successfully destroyed"
  end
end
