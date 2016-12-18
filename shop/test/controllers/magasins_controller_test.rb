require 'test_helper'

class MagasinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @magasin = magasins(:one)
  end

  test "should get index" do
    get magasins_url
    assert_response :success
  end

  test "should get new" do
    get new_magasin_url
    assert_response :success
  end

  test "should create magasin" do
    assert_difference('Magasin.count') do
      post magasins_url, params: { magasin: { address: @magasin.address, chain: @magasin.chain, city: @magasin.city, country_code: @magasin.country_code, latitude: @magasin.latitude, longitude: @magasin.longitude, name: @magasin.name, phone: @magasin.phone, zip: @magasin.zip } }
    end

    assert_redirected_to magasin_url(Magasin.last)
  end

  test "should show magasin" do
    get magasin_url(@magasin)
    assert_response :success
  end

  test "should get edit" do
    get edit_magasin_url(@magasin)
    assert_response :success
  end

  test "should update magasin" do
    patch magasin_url(@magasin), params: { magasin: { address: @magasin.address, chain: @magasin.chain, city: @magasin.city, country_code: @magasin.country_code, latitude: @magasin.latitude, longitude: @magasin.longitude, name: @magasin.name, phone: @magasin.phone, zip: @magasin.zip } }
    assert_redirected_to magasin_url(@magasin)
  end

  test "should destroy magasin" do
    assert_difference('Magasin.count', -1) do
      delete magasin_url(@magasin)
    end

    assert_redirected_to magasins_url
  end
end
