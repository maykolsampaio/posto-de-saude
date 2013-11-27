require 'test_helper'

class GestantesControllerTest < ActionController::TestCase
  setup do
    @gestante = gestantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gestantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gestante" do
    assert_difference('Gestante.count') do
      post :create, gestante: { ano: @gestante.ano, endereco: @gestante.endereco, nome: @gestante.nome, parto: @gestante.parto, puerperio1: @gestante.puerperio1, puerperio2: @gestante.puerperio2, ultima_regra: @gestante.ultima_regra, vacina1: @gestante.vacina1, vacina2: @gestante.vacina2, vacina3: @gestante.vacina3, vacinaR: @gestante.vacinaR }
    end

    assert_redirected_to gestante_path(assigns(:gestante))
  end

  test "should show gestante" do
    get :show, id: @gestante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gestante
    assert_response :success
  end

  test "should update gestante" do
    patch :update, id: @gestante, gestante: { ano: @gestante.ano, endereco: @gestante.endereco, nome: @gestante.nome, parto: @gestante.parto, puerperio1: @gestante.puerperio1, puerperio2: @gestante.puerperio2, ultima_regra: @gestante.ultima_regra, vacina1: @gestante.vacina1, vacina2: @gestante.vacina2, vacina3: @gestante.vacina3, vacinaR: @gestante.vacinaR }
    assert_redirected_to gestante_path(assigns(:gestante))
  end

  test "should destroy gestante" do
    assert_difference('Gestante.count', -1) do
      delete :destroy, id: @gestante
    end

    assert_redirected_to gestantes_path
  end
end
