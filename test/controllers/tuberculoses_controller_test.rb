require 'test_helper'

class TuberculosesControllerTest < ActionController::TestCase
  setup do
    @tuberculose = tuberculoses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tuberculoses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tuberculose" do
    assert_difference('Tuberculose.count') do
      post :create, tuberculose: { ano: @tuberculose.ano, bcg_menor_cinco_anos: @tuberculose.bcg_menor_cinco_anos, comunicantes_examinados: @tuberculose.comunicantes_examinados, comunicantes_examinados: @tuberculose.comunicantes_examinados, comunicantes_existentes: @tuberculose.comunicantes_existentes, comunicantes_menor_cinco_anos: @tuberculose.comunicantes_menor_cinco_anos, data_da_ultima_consulta: @tuberculose.data_da_ultima_consulta, data_da_visita: @tuberculose.data_da_visita, exame_escarro: @tuberculose.exame_escarro, reacoes_indesejaveis: @tuberculose.reacoes_indesejaveis }
    end

    assert_redirected_to tuberculose_path(assigns(:tuberculose))
  end

  test "should show tuberculose" do
    get :show, id: @tuberculose
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tuberculose
    assert_response :success
  end

  test "should update tuberculose" do
    patch :update, id: @tuberculose, tuberculose: { ano: @tuberculose.ano, bcg_menor_cinco_anos: @tuberculose.bcg_menor_cinco_anos, comunicantes_examinados: @tuberculose.comunicantes_examinados, comunicantes_examinados: @tuberculose.comunicantes_examinados, comunicantes_existentes: @tuberculose.comunicantes_existentes, comunicantes_menor_cinco_anos: @tuberculose.comunicantes_menor_cinco_anos, data_da_ultima_consulta: @tuberculose.data_da_ultima_consulta, data_da_visita: @tuberculose.data_da_visita, exame_escarro: @tuberculose.exame_escarro, reacoes_indesejaveis: @tuberculose.reacoes_indesejaveis }
    assert_redirected_to tuberculose_path(assigns(:tuberculose))
  end

  test "should destroy tuberculose" do
    assert_difference('Tuberculose.count', -1) do
      delete :destroy, id: @tuberculose
    end

    assert_redirected_to tuberculoses_path
  end
end
