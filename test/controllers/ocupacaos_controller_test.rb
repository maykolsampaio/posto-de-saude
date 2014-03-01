require 'test_helper'

class OcupacaosControllerTest < ActionController::TestCase
  setup do
    @ocupacao = ocupacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ocupacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ocupacao" do
    assert_difference('Ocupacao.count') do
      post :create, ocupacao: { nome: @ocupacao.nome }
    end

    assert_redirected_to ocupacao_path(assigns(:ocupacao))
  end

  test "should show ocupacao" do
    get :show, id: @ocupacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ocupacao
    assert_response :success
  end

  test "should update ocupacao" do
    patch :update, id: @ocupacao, ocupacao: { nome: @ocupacao.nome }
    assert_redirected_to ocupacao_path(assigns(:ocupacao))
  end

  test "should destroy ocupacao" do
    assert_difference('Ocupacao.count', -1) do
      delete :destroy, id: @ocupacao
    end

    assert_redirected_to ocupacaos_path
  end
end
