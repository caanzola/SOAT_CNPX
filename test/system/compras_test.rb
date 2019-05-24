require "application_system_test_case"

class ComprasTest < ApplicationSystemTestCase
  setup do
    @compra = compras(:one)
  end

  test "visiting the index" do
    visit compras_url
    assert_selector "h1", text: "Compras"
  end

  test "creating a Compra" do
    visit compras_url
    click_on "New Compra"

    fill_in "Codigo seguridad", with: @compra.Codigo_seguridad
    fill_in "Fecha de vencimiento tarjeta", with: @compra.Fecha_de_vencimiento_tarjeta
    fill_in "Nombre titular", with: @compra.Nombre_titular
    fill_in "Numero cuotas", with: @compra.Numero_cuotas
    fill_in "Numero tarjeta", with: @compra.Numero_tarjeta
    click_on "Create Compra"

    assert_text "Compra was successfully created"
    click_on "Back"
  end

  test "updating a Compra" do
    visit compras_url
    click_on "Edit", match: :first

    fill_in "Codigo seguridad", with: @compra.Codigo_seguridad
    fill_in "Fecha de vencimiento tarjeta", with: @compra.Fecha_de_vencimiento_tarjeta
    fill_in "Nombre titular", with: @compra.Nombre_titular
    fill_in "Numero cuotas", with: @compra.Numero_cuotas
    fill_in "Numero tarjeta", with: @compra.Numero_tarjeta
    click_on "Update Compra"

    assert_text "Compra was successfully updated"
    click_on "Back"
  end

  test "destroying a Compra" do
    visit compras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Compra was successfully destroyed"
  end
end
