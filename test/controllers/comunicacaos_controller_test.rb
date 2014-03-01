require 'test_helper'

class ComunicacaosControllerTest < ActionController::TestCase
  setup do
    @comunicacao = comunicacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comunicacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comunicacao" do
    assert_difference('Comunicacao.count') do
      post :create, comunicacao: { nome: @comunicacao.nome }
    end

    assert_redirected_to comunicacao_path(assigns(:comunicacao))
  end

  test "should show comunicacao" do
    get :show, id: @comunicacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comunicacao
    assert_response :success
  end

  test "should update comunicacao" do
    patch :update, id: @comunicacao, comunicacao: { nome: @comunicacao.nome }
    assert_redirected_to comunicacao_path(assigns(:comunicacao))
  end

  test "should destroy comunicacao" do
    assert_difference('Comunicacao.count', -1) do
      delete :destroy, id: @comunicacao
    end

    assert_redirected_to comunicacaos_path
  end
end
