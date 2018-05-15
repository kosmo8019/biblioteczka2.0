require "application_system_test_case"

class KsiazkasTest < ApplicationSystemTestCase
  setup do
    @ksiazka = ksiazkas(:one)
  end

  test "visiting the index" do
    visit ksiazkas_url
    assert_selector "h1", text: "Ksiazkas"
  end

  test "creating a Ksiazka" do
    visit ksiazkas_url
    click_on "New Ksiazka"

    fill_in "Autor", with: @ksiazka.autor
    fill_in "Opis", with: @ksiazka.opis
    fill_in "Tytul", with: @ksiazka.tytul
    click_on "Create Ksiazka"

    assert_text "Ksiazka was successfully created"
    click_on "Back"
  end

  test "updating a Ksiazka" do
    visit ksiazkas_url
    click_on "Edit", match: :first

    fill_in "Autor", with: @ksiazka.autor
    fill_in "Opis", with: @ksiazka.opis
    fill_in "Tytul", with: @ksiazka.tytul
    click_on "Update Ksiazka"

    assert_text "Ksiazka was successfully updated"
    click_on "Back"
  end

  test "destroying a Ksiazka" do
    visit ksiazkas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ksiazka was successfully destroyed"
  end
end
