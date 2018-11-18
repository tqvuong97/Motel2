require "application_system_test_case"

class RoomCheckOutsTest < ApplicationSystemTestCase
  setup do
    @room_check_out = room_check_outs(:one)
  end

  test "visiting the index" do
    visit room_check_outs_url
    assert_selector "h1", text: "Room Check Outs"
  end

  test "creating a Room check out" do
    visit room_check_outs_url
    click_on "New Room Check Out"

    fill_in "Dayrco", with: @room_check_out.dayRco
    fill_in "Guest", with: @room_check_out.guest_id
    fill_in "Note", with: @room_check_out.note
    click_on "Create Room check out"

    assert_text "Room check out was successfully created"
    click_on "Back"
  end

  test "updating a Room check out" do
    visit room_check_outs_url
    click_on "Edit", match: :first

    fill_in "Dayrco", with: @room_check_out.dayRco
    fill_in "Guest", with: @room_check_out.guest_id
    fill_in "Note", with: @room_check_out.note
    click_on "Update Room check out"

    assert_text "Room check out was successfully updated"
    click_on "Back"
  end

  test "destroying a Room check out" do
    visit room_check_outs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Room check out was successfully destroyed"
  end
end
