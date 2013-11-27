require 'test_helper'

class GestacaosControllerTest < ActionController::TestCase
  setup do
    @gestacao = gestacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gestacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gestacao" do
    assert_difference('Gestacao.count') do
      post :create, gestacao: { estado_nutricional: @gestacao.estado_nutricional, mes: @gestacao.mes, pre_natal: @gestacao.pre_natal, visita_acs: @gestacao.visita_acs }
    end

    assert_redirected_to gestacao_path(assigns(:gestacao))
  end

  test "should show gestacao" do
    get :show, id: @gestacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gestacao
    assert_response :success
  end

  test "should update gestacao" do
    patch :update, id: @gestacao, gestacao: { estado_nutricional: @gestacao.estado_nutricional, mes: @gestacao.mes, pre_natal: @gestacao.pre_natal, visita_acs: @gestacao.visita_acs }
    assert_redirected_to gestacao_path(assigns(:gestacao))
  end

  test "should destroy gestacao" do
    assert_difference('Gestacao.count', -1) do
      delete :destroy, id: @gestacao
    end

    assert_redirected_to gestacaos_path
  end
end
