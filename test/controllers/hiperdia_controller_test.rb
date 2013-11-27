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
      post :create, hiperdium: { ano: @hiperdium.ano, data_da_ultima_consulta: @hiperdium.data_da_ultima_consulta, data_da_visita: @hiperdium.data_da_visita, dieta: @hiperdium.dieta, exercicios_fisicos: @hiperdium.exercicios_fisicos, fumante: @hiperdium.fumante, hipoglicemiante_oral: @hiperdium.hipoglicemiante_oral, insulina: @hiperdium.insulina, licemia: @hiperdium.licemia, numero_da_familia: @hiperdium.numero_da_familia, obs: @hiperdium.obs, pa: @hiperdium.pa, toma_medicacao: @hiperdium.toma_medicacao }
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
    patch :update, id: @hiperdium, hiperdium: { ano: @hiperdium.ano, data_da_ultima_consulta: @hiperdium.data_da_ultima_consulta, data_da_visita: @hiperdium.data_da_visita, dieta: @hiperdium.dieta, exercicios_fisicos: @hiperdium.exercicios_fisicos, fumante: @hiperdium.fumante, hipoglicemiante_oral: @hiperdium.hipoglicemiante_oral, insulina: @hiperdium.insulina, licemia: @hiperdium.licemia, numero_da_familia: @hiperdium.numero_da_familia, obs: @hiperdium.obs, pa: @hiperdium.pa, toma_medicacao: @hiperdium.toma_medicacao }
    assert_redirected_to hiperdium_path(assigns(:hiperdium))
  end

  test "should destroy hiperdium" do
    assert_difference('Hiperdium.count', -1) do
      delete :destroy, id: @hiperdium
    end

    assert_redirected_to hiperdia_path
  end
end
