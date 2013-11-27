require 'test_helper'

class ResultadoGestacaosControllerTest < ActionController::TestCase
  setup do
    @resultado_gestacao = resultado_gestacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resultado_gestacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resultado_gestacao" do
    assert_difference('ResultadoGestacao.count') do
      post :create, resultado_gestacao: { ab: @resultado_gestacao.ab, nm: @resultado_gestacao.nm, nv: @resultado_gestacao.nv }
    end

    assert_redirected_to resultado_gestacao_path(assigns(:resultado_gestacao))
  end

  test "should show resultado_gestacao" do
    get :show, id: @resultado_gestacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resultado_gestacao
    assert_response :success
  end

  test "should update resultado_gestacao" do
    patch :update, id: @resultado_gestacao, resultado_gestacao: { ab: @resultado_gestacao.ab, nm: @resultado_gestacao.nm, nv: @resultado_gestacao.nv }
    assert_redirected_to resultado_gestacao_path(assigns(:resultado_gestacao))
  end

  test "should destroy resultado_gestacao" do
    assert_difference('ResultadoGestacao.count', -1) do
      delete :destroy, id: @resultado_gestacao
    end

    assert_redirected_to resultado_gestacaos_path
  end
end
