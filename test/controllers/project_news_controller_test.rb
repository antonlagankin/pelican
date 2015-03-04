require 'test_helper'

class ProjectNewsControllerTest < ActionController::TestCase
  setup do
    @project_news = project_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_news" do
    assert_difference('ProjectNews.count') do
      post :create, project_news: { content: @project_news.content, date: @project_news.date, tags: @project_news.tags }
    end

    assert_redirected_to project_news_path(assigns(:project_news))
  end

  test "should show project_news" do
    get :show, id: @project_news
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_news
    assert_response :success
  end

  test "should update project_news" do
    patch :update, id: @project_news, project_news: { content: @project_news.content, date: @project_news.date, tags: @project_news.tags }
    assert_redirected_to project_news_path(assigns(:project_news))
  end

  test "should destroy project_news" do
    assert_difference('ProjectNews.count', -1) do
      delete :destroy, id: @project_news
    end

    assert_redirected_to project_news_index_path
  end
end
