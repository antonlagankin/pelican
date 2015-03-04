Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :about_projects, :project_news, :coaches, :blogs, :blog_article, :defaults => {:format => 'json'}
    end
  end

  namespace :ui do
    get 'pelican/index'
  end

end
