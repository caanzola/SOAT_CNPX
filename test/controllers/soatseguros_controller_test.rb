require 'test_helper'

class SoatsegurosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @soatseguro = soatseguros(:one)
  end

  test "should get index" do
    get soatseguros_url
    assert_response :success
  end

  test "should get new" do
    get new_soatseguro_url
    assert_response :success
  end

  test "should create soatseguro" do
    assert_difference('Soatseguro.count') do
      post soatseguros_url, params: { soatseguro: { Cilindraje: @soatseguro.Cilindraje, Clase: @soatseguro.Clase, Edad: @soatseguro.Edad, Fecha: @soatseguro.Fecha, Numero: @soatseguro.Numero, Placa: @soatseguro.Placa, Precio: @soatseguro.Precio, Toneladas: @soatseguro.Toneladas, del: @soatseguro.del, fin: @soatseguro.fin, inicio: @soatseguro.inicio, pasajeros: @soatseguro.pasajeros, vehiculo: @soatseguro.vehiculo, vigencia: @soatseguro.vigencia } }
    end

    assert_redirected_to soatseguro_url(Soatseguro.last)
  end

  test "should show soatseguro" do
    get soatseguro_url(@soatseguro)
    assert_response :success
  end

  test "should get edit" do
    get edit_soatseguro_url(@soatseguro)
    assert_response :success
  end

  test "should update soatseguro" do
    patch soatseguro_url(@soatseguro), params: { soatseguro: { Cilindraje: @soatseguro.Cilindraje, Clase: @soatseguro.Clase, Edad: @soatseguro.Edad, Fecha: @soatseguro.Fecha, Numero: @soatseguro.Numero, Placa: @soatseguro.Placa, Precio: @soatseguro.Precio, Toneladas: @soatseguro.Toneladas, del: @soatseguro.del, fin: @soatseguro.fin, inicio: @soatseguro.inicio, pasajeros: @soatseguro.pasajeros, vehiculo: @soatseguro.vehiculo, vigencia: @soatseguro.vigencia } }
    assert_redirected_to soatseguro_url(@soatseguro)
  end

  test "should destroy soatseguro" do
    assert_difference('Soatseguro.count', -1) do
      delete soatseguro_url(@soatseguro)
    end

    assert_redirected_to soatseguros_url
  end
end
