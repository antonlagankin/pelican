json.array!(@about_projects) do |about_project|
  json.extract! about_project, :id, :decription
  json.url about_project_url(about_project, format: :json)
end
