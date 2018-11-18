require "application_system_test_case"

class GuestsTest < ApplicationSystemTestCase
  setup do
    @guest = guests(:one)
  end

  test "visiting the index" do
    visit guests_url
    assert_selector "h1", text: "Guests"
  end

  test "creating a Guest" do
    visit guests_url
    click_on "New Guest"

    fill_in "Address", with: @guest.address
    fill_in "Fullname", with: @guest.fullName
    fill_in "Idcard", with: @guest.idCard
    fill_in "Image", with: @guest.image
    fill_in "Job", with: @guest.job
    fill_in "Phonenumber", with: @guest.phoneNumber
    fill_in "Room", with: @guest.room_id
    fill_in "Sex", with: @guest.sex
    fill_in "Statusguest", with: @guest.statusGuest
    fill_in "User", with: @guest.user_id
    click_on "Create Guest"

    assert_text "Guest was successfully created"
    click_on "Back"
  end

  test "updating a Guest" do
    visit guests_url
    click_on "Edit", match: :first

    fill_in "Address", with: @guest.address
    fill_in "Fullname", with: @guest.fullName
    fill_in "Idcard", with: @guest.idCard
    fill_in "Image", with: @guest.image
    fill_in "Job", with: @guest.job
    fill_in "Phonenumber", with: @guest.phoneNumber
    fill_in "Room", with: @guest.room_id
    fill_in "Sex", with: @guest.sex
    fill_in "Statusguest", with: @guest.statusGuest
    fill_in "User", with: @guest.user_id
    click_on "Update Guest"

    assert_text "Guest was successfully updated"
    click_on "Back"
  end

  test "destroying a Guest" do
    visit guests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guest was successfully destroyed"
  end
end
