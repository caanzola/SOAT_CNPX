require "application_system_test_case"

class SoatsegurosTest < ApplicationSystemTestCase
  setup do
    @soatseguro = soatseguros(:one)
  end

  test "visiting the index" do
    visit soatseguros_url
    assert_selector "h1", text: "Soatseguros"
  end

  test "creating a Soatseguro" do
    visit soatseguros_url
    click_on "New Soatseguro"

    fill_in "Cilindraje", with: @soatseguro.Cilindraje
    fill_in "Clase", with: @soatseguro.Clase
    fill_in "Edad", with: @soatseguro.Edad
    fill_in "Fecha", with: @soatseguro.Fecha
    fill_in "Numero", with: @soatseguro.Numero
    fill_in "Placa", with: @soatseguro.Placa
    fill_in "Precio", with: @soatseguro.Precio
    fill_in "Toneladas", with: @soatseguro.Toneladas
    fill_in "Del", with: @soatseguro.del
    fill_in "Fin", with: @soatseguro.fin
    fill_in "Inicio", with: @soatseguro.inicio
    fill_in "Pasajeros", with: @soatseguro.pasajeros
    fill_in "Vehiculo", with: @soatseguro.vehiculo
    fill_in "Vigencia", with: @soatseguro.vigencia
    click_on "Create Soatseguro"

    assert_text "Soatseguro was successfully created"
    click_on "Back"
  end

  test "updating a Soatseguro" do
    visit soatseguros_url
    click_on "Edit", match: :first

    fill_in "Cilindraje", with: @soatseguro.Cilindraje
    fill_in "Clase", with: @soatseguro.Clase
    fill_in "Edad", with: @soatseguro.Edad
    fill_in "Fecha", with: @soatseguro.Fecha
    fill_in "Numero", with: @soatseguro.Numero
    fill_in "Placa", with: @soatseguro.Placa
    fill_in "Precio", with: @soatseguro.Precio
    fill_in "Toneladas", with: @soatseguro.Toneladas
    fill_in "Del", with: @soatseguro.del
    fill_in "Fin", with: @soatseguro.fin
    fill_in "Inicio", with: @soatseguro.inicio
    fill_in "Pasajeros", with: @soatseguro.pasajeros
    fill_in "Vehiculo", with: @soatseguro.vehiculo
    fill_in "Vigencia", with: @soatseguro.vigencia
    click_on "Update Soatseguro"

    assert_text "Soatseguro was successfully updated"
    click_on "Back"
  end

  test "destroying a Soatseguro" do
    visit soatseguros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Soatseguro was successfully destroyed"
  end
end
