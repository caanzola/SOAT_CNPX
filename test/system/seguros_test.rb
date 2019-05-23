require "application_system_test_case"

class SegurosTest < ApplicationSystemTestCase
  setup do
    @seguro = seguros(:one)
  end

  test "visiting the index" do
    visit seguros_url
    assert_selector "h1", text: "Seguros"
  end

  test "creating a Seguro" do
    visit seguros_url
    click_on "New Seguro"

    fill_in "Cilindraje", with: @seguro.Cilindraje
    fill_in "Clase", with: @seguro.Clase
    fill_in "Edad", with: @seguro.Edad
    fill_in "Fecha fin vigencia", with: @seguro.Fecha_fin_vigencia
    fill_in "Fecha inicio vigencia", with: @seguro.Fecha_inicio_vigencia
    fill_in "Numero pasajeros", with: @seguro.Numero_pasajeros
    fill_in "Placa del vehiculo", with: @seguro.Placa_del_vehiculo
    fill_in "Precio", with: @seguro.Precio
    fill_in "Toneladas", with: @seguro.Toneladas
    click_on "Create Seguro"

    assert_text "Seguro was successfully created"
    click_on "Back"
  end

  test "updating a Seguro" do
    visit seguros_url
    click_on "Edit", match: :first

    fill_in "Cilindraje", with: @seguro.Cilindraje
    fill_in "Clase", with: @seguro.Clase
    fill_in "Edad", with: @seguro.Edad
    fill_in "Fecha fin vigencia", with: @seguro.Fecha_fin_vigencia
    fill_in "Fecha inicio vigencia", with: @seguro.Fecha_inicio_vigencia
    fill_in "Numero pasajeros", with: @seguro.Numero_pasajeros
    fill_in "Placa del vehiculo", with: @seguro.Placa_del_vehiculo
    fill_in "Precio", with: @seguro.Precio
    fill_in "Toneladas", with: @seguro.Toneladas
    click_on "Update Seguro"

    assert_text "Seguro was successfully updated"
    click_on "Back"
  end

  test "destroying a Seguro" do
    visit seguros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seguro was successfully destroyed"
  end
end
