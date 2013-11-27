require 'test_helper'

class FatorRiscosControllerTest < ActionController::TestCase
  setup do
    @fator_risco = fator_riscos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fator_riscos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fator_risco" do
    assert_difference('FatorRisco.count') do
      post :create, fator_risco: { desc: @fator_risco.desc }
    end

    assert_redirected_to fator_risco_path(assigns(:fator_risco))
  end

  test "should show fator_risco" do
    get :show, id: @fator_risco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fator_risco
    assert_response :success
  end

  test "should update fator_risco" do
    patch :update, id: @fator_risco, fator_risco: { desc: @fator_risco.desc }
    assert_redirected_to fator_risco_path(assigns(:fator_risco))
  end

  test "should destroy fator_risco" do
    assert_difference('FatorRisco.count', -1) do
      delete :destroy, id: @fator_risco
    end

    assert_redirected_to fator_riscos_path
  end
end
