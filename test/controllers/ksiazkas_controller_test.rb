require 'test_helper'

class KsiazkasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ksiazka = ksiazkas(:one)
  end

  test "should get index" do
    get ksiazkas_url
    assert_response :success
  end

  test "should get new" do
    get new_ksiazka_url
    assert_response :success
  end

  test "should create ksiazka" do
    assert_difference('Ksiazka.count') do
      post ksiazkas_url, params: { ksiazka: { autor: @ksiazka.autor, opis: @ksiazka.opis, tytul: @ksiazka.tytul } }
    end

    assert_redirected_to ksiazka_url(Ksiazka.last)
  end

  test "should show ksiazka" do
    get ksiazka_url(@ksiazka)
    assert_response :success
  end

  test "should get edit" do
    get edit_ksiazka_url(@ksiazka)
    assert_response :success
  end

  test "should update ksiazka" do
    patch ksiazka_url(@ksiazka), params: { ksiazka: { autor: @ksiazka.autor, opis: @ksiazka.opis, tytul: @ksiazka.tytul } }
    assert_redirected_to ksiazka_url(@ksiazka)
  end

  test "should destroy ksiazka" do
    assert_difference('Ksiazka.count', -1) do
      delete ksiazka_url(@ksiazka)
    end

    assert_redirected_to ksiazkas_url
  end
end
