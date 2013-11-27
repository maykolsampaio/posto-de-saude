require 'test_helper'

class FichasControllerTest < ActionController::TestCase
  setup do
    @ficha = fichas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fichas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ficha" do
    assert_difference('Ficha.count') do
      post :create, ficha: { abastecimento_agua: @ficha.abastecimento_agua, area: @ficha.area, bairro: @ficha.bairro, caso_doenca: @ficha.caso_doenca, cep: @ficha.cep, codigo: @ficha.codigo, comodos: @ficha.comodos, data: @ficha.data, destino_fezes_urina: @ficha.destino_fezes_urina, destino_lixo: @ficha.destino_lixo, endereco: @ficha.endereco, energia_eletrica: @ficha.energia_eletrica, meio_comunicacao: @ficha.meio_comunicacao, microarea: @ficha.microarea, municipio: @ficha.municipio, nome_plano: @ficha.nome_plano, numero: @ficha.numero, participa_cooperativa: @ficha.participa_cooperativa, participa_grupo_religioso: @ficha.participa_grupo_religioso, pessoas_plano: @ficha.pessoas_plano, plano_saude: @ficha.plano_saude, segmento: @ficha.segmento, tipocasa: @ficha.tipocasa, transporte: @ficha.transporte, tratamento_agua: @ficha.tratamento_agua }
    end

    assert_redirected_to ficha_path(assigns(:ficha))
  end

  test "should show ficha" do
    get :show, id: @ficha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ficha
    assert_response :success
  end

  test "should update ficha" do
    patch :update, id: @ficha, ficha: { abastecimento_agua: @ficha.abastecimento_agua, area: @ficha.area, bairro: @ficha.bairro, caso_doenca: @ficha.caso_doenca, cep: @ficha.cep, codigo: @ficha.codigo, comodos: @ficha.comodos, data: @ficha.data, destino_fezes_urina: @ficha.destino_fezes_urina, destino_lixo: @ficha.destino_lixo, endereco: @ficha.endereco, energia_eletrica: @ficha.energia_eletrica, meio_comunicacao: @ficha.meio_comunicacao, microarea: @ficha.microarea, municipio: @ficha.municipio, nome_plano: @ficha.nome_plano, numero: @ficha.numero, participa_cooperativa: @ficha.participa_cooperativa, participa_grupo_religioso: @ficha.participa_grupo_religioso, pessoas_plano: @ficha.pessoas_plano, plano_saude: @ficha.plano_saude, segmento: @ficha.segmento, tipocasa: @ficha.tipocasa, transporte: @ficha.transporte, tratamento_agua: @ficha.tratamento_agua }
    assert_redirected_to ficha_path(assigns(:ficha))
  end

  test "should destroy ficha" do
    assert_difference('Ficha.count', -1) do
      delete :destroy, id: @ficha
    end

    assert_redirected_to fichas_path
  end
end
