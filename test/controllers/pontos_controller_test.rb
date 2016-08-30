require 'test_helper'

class PontosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ponto = pontos(:one)
  end

  test "should get index" do
    get pontos_url
    assert_response :success
  end

  test "should get new" do
    get new_ponto_url
    assert_response :success
  end

  test "should create ponto" do
    assert_difference('Ponto.count') do
      post pontos_url, params: { ponto: { celula_id: @ponto.celula_id, data: @ponto.data, id_frequencia: @ponto.id_frequencia, membro_id: @ponto.membro_id } }
    end

    assert_redirected_to ponto_url(Ponto.last)
  end

  test "should show ponto" do
    get ponto_url(@ponto)
    assert_response :success
  end

  test "should get edit" do
    get edit_ponto_url(@ponto)
    assert_response :success
  end

  test "should update ponto" do
    patch ponto_url(@ponto), params: { ponto: { celula_id: @ponto.celula_id, data: @ponto.data, id_frequencia: @ponto.id_frequencia, membro_id: @ponto.membro_id } }
    assert_redirected_to ponto_url(@ponto)
  end

  test "should destroy ponto" do
    assert_difference('Ponto.count', -1) do
      delete ponto_url(@ponto)
    end

    assert_redirected_to pontos_url
  end
end
