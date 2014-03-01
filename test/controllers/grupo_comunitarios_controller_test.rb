require 'test_helper'

class GrupoComunitariosControllerTest < ActionController::TestCase
  setup do
    @grupo_comunitario = grupo_comunitarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupo_comunitarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grupo_comunitario" do
    assert_difference('GrupoComunitario.count') do
      post :create, grupo_comunitario: { nome: @grupo_comunitario.nome }
    end

    assert_redirected_to grupo_comunitario_path(assigns(:grupo_comunitario))
  end

  test "should show grupo_comunitario" do
    get :show, id: @grupo_comunitario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grupo_comunitario
    assert_response :success
  end

  test "should update grupo_comunitario" do
    patch :update, id: @grupo_comunitario, grupo_comunitario: { nome: @grupo_comunitario.nome }
    assert_redirected_to grupo_comunitario_path(assigns(:grupo_comunitario))
  end

  test "should destroy grupo_comunitario" do
    assert_difference('GrupoComunitario.count', -1) do
      delete :destroy, id: @grupo_comunitario
    end

    assert_redirected_to grupo_comunitarios_path
  end
end
