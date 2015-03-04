json.array!(@project_news) do |project_news|
  json.extract! project_news, :id, :date, :content, :tags
  json.url project_news_url(project_news, format: :json)
end
