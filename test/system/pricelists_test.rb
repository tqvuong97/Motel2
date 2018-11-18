require "application_system_test_case"

class PricelistsTest < ApplicationSystemTestCase
  setup do
    @pricelist = pricelists(:one)
  end

  test "visiting the index" do
    visit pricelists_url
    assert_selector "h1", text: "Pricelists"
  end

  test "creating a Pricelist" do
    visit pricelists_url
    click_on "New Pricelist"

    fill_in "Area", with: @pricelist.area_id
    fill_in "Price", with: @pricelist.price
    click_on "Create Pricelist"

    assert_text "Pricelist was successfully created"
    click_on "Back"
  end

  test "updating a Pricelist" do
    visit pricelists_url
    click_on "Edit", match: :first

    fill_in "Area", with: @pricelist.area_id
    fill_in "Price", with: @pricelist.price
    click_on "Update Pricelist"

    assert_text "Pricelist was successfully updated"
    click_on "Back"
  end

  test "destroying a Pricelist" do
    visit pricelists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pricelist was successfully destroyed"
  end
end
