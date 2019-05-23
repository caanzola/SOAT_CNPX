require 'test_helper'

class PolizasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poliza = polizas(:one)
  end

  test "should get index" do
    get polizas_url
    assert_response :success
  end

  test "should get new" do
    get new_poliza_url
    assert_response :success
  end

  test "should create poliza" do
    assert_difference('Poliza.count') do
      post polizas_url, params: { poliza: { name: @poliza.name } }
    end

    assert_redirected_to poliza_url(Poliza.last)
  end

  test "should show poliza" do
    get poliza_url(@poliza)
    assert_response :success
  end

  test "should get edit" do
    get edit_poliza_url(@poliza)
    assert_response :success
  end

  test "should update poliza" do
    patch poliza_url(@poliza), params: { poliza: { name: @poliza.name } }
    assert_redirected_to poliza_url(@poliza)
  end

  test "should destroy poliza" do
    assert_difference('Poliza.count', -1) do
      delete poliza_url(@poliza)
    end

    assert_redirected_to polizas_url
  end
end
