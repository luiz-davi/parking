require 'test_helper'

class LocacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locacao = locacaos(:one)
  end

  test "should get index" do
    get locacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_locacao_url
    assert_response :success
  end

  test "should create locacao" do
    assert_difference('Locacao.count') do
      post locacaos_url, params: { locacao: { placa: @locacao.placa, vaga_id: @locacao.vaga_id } }
    end

    assert_redirected_to locacao_url(Locacao.last)
  end

  test "should show locacao" do
    get locacao_url(@locacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_locacao_url(@locacao)
    assert_response :success
  end

  test "should update locacao" do
    patch locacao_url(@locacao), params: { locacao: { placa: @locacao.placa, vaga_id: @locacao.vaga_id } }
    assert_redirected_to locacao_url(@locacao)
  end

  test "should destroy locacao" do
    assert_difference('Locacao.count', -1) do
      delete locacao_url(@locacao)
    end

    assert_redirected_to locacaos_url
  end
end
