require 'test_helper'

class PessoasControllerTest < ActionController::TestCase
  setup do
    @pessoa = pessoas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pessoas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pessoa" do
    assert_difference('Pessoa.count') do
      post :create, pessoa: { alfabetizado: @pessoa.alfabetizado, cooperativa: @pessoa.cooperativa, d: @pessoa.d, data_nascimento: @pessoa.data_nascimento, doencas_id: @pessoa.doencas_id, ficha_id: @pessoa.ficha_id, frequenta_escola: @pessoa.frequenta_escola, meio_comunicacao: @pessoa.meio_comunicacao, nome: @pessoa.nome, nome_plano_de_saude: @pessoa.nome_plano_de_saude, ocupacao_id: @pessoa.ocupacao_id, religiao: @pessoa.religiao, sexo: @pessoa.sexo, transporte: @pessoa.transporte }
    end

    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  test "should show pessoa" do
    get :show, id: @pessoa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pessoa
    assert_response :success
  end

  test "should update pessoa" do
    patch :update, id: @pessoa, pessoa: { alfabetizado: @pessoa.alfabetizado, cooperativa: @pessoa.cooperativa, d: @pessoa.d, data_nascimento: @pessoa.data_nascimento, doencas_id: @pessoa.doencas_id, ficha_id: @pessoa.ficha_id, frequenta_escola: @pessoa.frequenta_escola, meio_comunicacao: @pessoa.meio_comunicacao, nome: @pessoa.nome, nome_plano_de_saude: @pessoa.nome_plano_de_saude, ocupacao_id: @pessoa.ocupacao_id, religiao: @pessoa.religiao, sexo: @pessoa.sexo, transporte: @pessoa.transporte }
    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  test "should destroy pessoa" do
    assert_difference('Pessoa.count', -1) do
      delete :destroy, id: @pessoa
    end

    assert_redirected_to pessoas_path
  end
end
