require 'test_helper'

class LiderTreinamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lider_treinamento = lider_treinamentos(:one)
  end

  test "should get index" do
    get lider_treinamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_lider_treinamento_url
    assert_response :success
  end

  test "should create lider_treinamento" do
    assert_difference('LiderTreinamento.count') do
      post lider_treinamentos_url, params: { lider_treinamento: { celula_id: @lider_treinamento.celula_id, id_lider_treinamento: @lider_treinamento.id_lider_treinamento, member_id: @lider_treinamento.member_id } }
    end

    assert_redirected_to lider_treinamento_url(LiderTreinamento.last)
  end

  test "should show lider_treinamento" do
    get lider_treinamento_url(@lider_treinamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_lider_treinamento_url(@lider_treinamento)
    assert_response :success
  end

  test "should update lider_treinamento" do
    patch lider_treinamento_url(@lider_treinamento), params: { lider_treinamento: { celula_id: @lider_treinamento.celula_id, id_lider_treinamento: @lider_treinamento.id_lider_treinamento, member_id: @lider_treinamento.member_id } }
    assert_redirected_to lider_treinamento_url(@lider_treinamento)
  end

  test "should destroy lider_treinamento" do
    assert_difference('LiderTreinamento.count', -1) do
      delete lider_treinamento_url(@lider_treinamento)
    end

    assert_redirected_to lider_treinamentos_url
  end
end
