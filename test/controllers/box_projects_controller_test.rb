require 'test_helper'

class BoxProjectsControllerTest < ActionController::TestCase
  setup do
    @box_project = box_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:box_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create box_project" do
    assert_difference('BoxProject.count') do
      post :create, box_project: { descricao: @box_project.descricao, link: @box_project.link, titulo: @box_project.titulo, topico: @box_project.topico }
    end

    assert_redirected_to box_project_path(assigns(:box_project))
  end

  test "should show box_project" do
    get :show, id: @box_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @box_project
    assert_response :success
  end

  test "should update box_project" do
    patch :update, id: @box_project, box_project: { descricao: @box_project.descricao, link: @box_project.link, titulo: @box_project.titulo, topico: @box_project.topico }
    assert_redirected_to box_project_path(assigns(:box_project))
  end

  test "should destroy box_project" do
    assert_difference('BoxProject.count', -1) do
      delete :destroy, id: @box_project
    end

    assert_redirected_to box_projects_path
  end
end
