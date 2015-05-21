require 'test_helper'

class ItemBoxProjectsControllerTest < ActionController::TestCase
  setup do
    @item_box_project = item_box_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_box_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_box_project" do
    assert_difference('ItemBoxProject.count') do
      post :create, item_box_project: { conteudo: @item_box_project.conteudo, nome: @item_box_project.nome }
    end

    assert_redirected_to item_box_project_path(assigns(:item_box_project))
  end

  test "should show item_box_project" do
    get :show, id: @item_box_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_box_project
    assert_response :success
  end

  test "should update item_box_project" do
    patch :update, id: @item_box_project, item_box_project: { conteudo: @item_box_project.conteudo, nome: @item_box_project.nome }
    assert_redirected_to item_box_project_path(assigns(:item_box_project))
  end

  test "should destroy item_box_project" do
    assert_difference('ItemBoxProject.count', -1) do
      delete :destroy, id: @item_box_project
    end

    assert_redirected_to item_box_projects_path
  end
end
