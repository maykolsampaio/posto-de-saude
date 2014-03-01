require 'test_helper'

class HiperdiaControllerTest < ActionController::TestCase
  setup do
    @hiperdium = hiperdia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hiperdia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hiperdium" do
    assert_difference('Hiperdium.count') do
      post :create, hiperdium: { ano: @hiperdium.ano, dieta: @hiperdium.dieta, exercicios: @hiperdium.exercicios, fumante: @hiperdium.fumante, medicacao: @hiperdium.medicacao, mes_id: @hiperdium.mes_id, observacao: @hiperdium.observacao, pessoa_id: @hiperdium.pessoa_id, pressao_arterial: @hiperdium.pressao_arterial, ultima_consulta: @hiperdium.ultima_consulta, unidade: @hiperdium.unidade, visita_acs: @hiperdium.visita_acs }
    end

    assert_redirected_to hiperdium_path(assigns(:hiperdium))
  end

  test "should show hiperdium" do
    get :show, id: @hiperdium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hiperdium
    assert_response :success
  end

  test "should update hiperdium" do
    patch :update, id: @hiperdium, hiperdium: { ano: @hiperdium.ano, dieta: @hiperdium.dieta, exercicios: @hiperdium.exercicios, fumante: @hiperdium.fumante, medicacao: @hiperdium.medicacao, mes_id: @hiperdium.mes_id, observacao: @hiperdium.observacao, pessoa_id: @hiperdium.pessoa_id, pressao_arterial: @hiperdium.pressao_arterial, ultima_consulta: @hiperdium.ultima_consulta, unidade: @hiperdium.unidade, visita_acs: @hiperdium.visita_acs }
    assert_redirected_to hiperdium_path(assigns(:hiperdium))
  end

  test "should destroy hiperdium" do
    assert_difference('Hiperdium.count', -1) do
      delete :destroy, id: @hiperdium
    end

    assert_redirected_to hiperdia_path
  end
end
