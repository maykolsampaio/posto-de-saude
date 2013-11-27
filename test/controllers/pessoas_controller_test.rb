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
      post :create, pessoa: { alfabetizado_ou_na_escola: @pessoa.alfabetizado_ou_na_escola, data_de_nascimento: @pessoa.data_de_nascimento, doenca: @pessoa.doenca, idade: @pessoa.idade, nome: @pessoa.nome, ocupacao: @pessoa.ocupacao, sexo: @pessoa.sexo }
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
    patch :update, id: @pessoa, pessoa: { alfabetizado_ou_na_escola: @pessoa.alfabetizado_ou_na_escola, data_de_nascimento: @pessoa.data_de_nascimento, doenca: @pessoa.doenca, idade: @pessoa.idade, nome: @pessoa.nome, ocupacao: @pessoa.ocupacao, sexo: @pessoa.sexo }
    assert_redirected_to pessoa_path(assigns(:pessoa))
  end

  test "should destroy pessoa" do
    assert_difference('Pessoa.count', -1) do
      delete :destroy, id: @pessoa
    end

    assert_redirected_to pessoas_path
  end
end
