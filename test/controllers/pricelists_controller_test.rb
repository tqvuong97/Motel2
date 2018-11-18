require 'test_helper'

class PricelistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pricelist = pricelists(:one)
  end

  test "should get index" do
    get pricelists_url
    assert_response :success
  end

  test "should get new" do
    get new_pricelist_url
    assert_response :success
  end

  test "should create pricelist" do
    assert_difference('Pricelist.count') do
      post pricelists_url, params: { pricelist: { area_id: @pricelist.area_id, price: @pricelist.price } }
    end

    assert_redirected_to pricelist_url(Pricelist.last)
  end

  test "should show pricelist" do
    get pricelist_url(@pricelist)
    assert_response :success
  end

  test "should get edit" do
    get edit_pricelist_url(@pricelist)
    assert_response :success
  end

  test "should update pricelist" do
    patch pricelist_url(@pricelist), params: { pricelist: { area_id: @pricelist.area_id, price: @pricelist.price } }
    assert_redirected_to pricelist_url(@pricelist)
  end

  test "should destroy pricelist" do
    assert_difference('Pricelist.count', -1) do
      delete pricelist_url(@pricelist)
    end

    assert_redirected_to pricelists_url
  end
end
