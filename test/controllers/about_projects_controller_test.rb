require 'test_helper'

class AboutProjectsControllerTest < ActionController::TestCase
  setup do
    @about_project = about_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:about_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create about_project" do
    assert_difference('AboutProject.count') do
      post :create, about_project: { decription: @about_project.decription }
    end

    assert_redirected_to about_project_path(assigns(:about_project))
  end

  test "should show about_project" do
    get :show, id: @about_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @about_project
    assert_response :success
  end

  test "should update about_project" do
    patch :update, id: @about_project, about_project: { decription: @about_project.decription }
    assert_redirected_to about_project_path(assigns(:about_project))
  end

  test "should destroy about_project" do
    assert_difference('AboutProject.count', -1) do
      delete :destroy, id: @about_project
    end

    assert_redirected_to about_projects_path
  end
end
