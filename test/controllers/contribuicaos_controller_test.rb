require 'test_helper'

class ContribuicaosControllerTest < ActionController::TestCase
  setup do
    @contribuicao = contribuicaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contribuicaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contribuicao" do
    assert_difference('Contribuicao.count') do
      post :create, contribuicao: { arquivo: @contribuicao.arquivo, data: @contribuicao.data, usuario_id: @contribuicao.usuario_id, versao: @contribuicao.versao }
    end

    assert_redirected_to contribuicao_path(assigns(:contribuicao))
  end

  test "should show contribuicao" do
    get :show, id: @contribuicao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contribuicao
    assert_response :success
  end

  test "should update contribuicao" do
    patch :update, id: @contribuicao, contribuicao: { arquivo: @contribuicao.arquivo, data: @contribuicao.data, usuario_id: @contribuicao.usuario_id, versao: @contribuicao.versao }
    assert_redirected_to contribuicao_path(assigns(:contribuicao))
  end

  test "should destroy contribuicao" do
    assert_difference('Contribuicao.count', -1) do
      delete :destroy, id: @contribuicao
    end

    assert_redirected_to contribuicaos_path
  end
end
