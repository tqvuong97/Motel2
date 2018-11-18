require "application_system_test_case"

class RoomcheckoutsTest < ApplicationSystemTestCase
  setup do
    @roomcheckout = roomcheckouts(:one)
  end

  test "visiting the index" do
    visit roomcheckouts_url
    assert_selector "h1", text: "Roomcheckouts"
  end

  test "creating a Roomcheckout" do
    visit roomcheckouts_url
    click_on "New Roomcheckout"

    fill_in "Dayrco", with: @roomcheckout.dayRco
    fill_in "Guest", with: @roomcheckout.guest_id
    fill_in "Note", with: @roomcheckout.note
    click_on "Create Roomcheckout"

    assert_text "Roomcheckout was successfully created"
    click_on "Back"
  end

  test "updating a Roomcheckout" do
    visit roomcheckouts_url
    click_on "Edit", match: :first

    fill_in "Dayrco", with: @roomcheckout.dayRco
    fill_in "Guest", with: @roomcheckout.guest_id
    fill_in "Note", with: @roomcheckout.note
    click_on "Update Roomcheckout"

    assert_text "Roomcheckout was successfully updated"
    click_on "Back"
  end

  test "destroying a Roomcheckout" do
    visit roomcheckouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roomcheckout was successfully destroyed"
  end
end
