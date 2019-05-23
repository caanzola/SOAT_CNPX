require 'test_helper'

class SegurosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seguro = seguros(:one)
  end

  test "should get index" do
    get seguros_url
    assert_response :success
  end

  test "should get new" do
    get new_seguro_url
    assert_response :success
  end

  test "should create seguro" do
    assert_difference('Seguro.count') do
      post seguros_url, params: { seguro: { Cilindraje: @seguro.Cilindraje, Clase: @seguro.Clase, Edad: @seguro.Edad, Fecha_fin_vigencia: @seguro.Fecha_fin_vigencia, Fecha_inicio_vigencia: @seguro.Fecha_inicio_vigencia, Numero_pasajeros: @seguro.Numero_pasajeros, Placa_del_vehiculo: @seguro.Placa_del_vehiculo, Precio: @seguro.Precio, Toneladas: @seguro.Toneladas } }
    end

    assert_redirected_to seguro_url(Seguro.last)
  end

  test "should show seguro" do
    get seguro_url(@seguro)
    assert_response :success
  end

  test "should get edit" do
    get edit_seguro_url(@seguro)
    assert_response :success
  end

  test "should update seguro" do
    patch seguro_url(@seguro), params: { seguro: { Cilindraje: @seguro.Cilindraje, Clase: @seguro.Clase, Edad: @seguro.Edad, Fecha_fin_vigencia: @seguro.Fecha_fin_vigencia, Fecha_inicio_vigencia: @seguro.Fecha_inicio_vigencia, Numero_pasajeros: @seguro.Numero_pasajeros, Placa_del_vehiculo: @seguro.Placa_del_vehiculo, Precio: @seguro.Precio, Toneladas: @seguro.Toneladas } }
    assert_redirected_to seguro_url(@seguro)
  end

  test "should destroy seguro" do
    assert_difference('Seguro.count', -1) do
      delete seguro_url(@seguro)
    end

    assert_redirected_to seguros_url
  end
end
