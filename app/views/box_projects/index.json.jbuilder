json.array!(@box_projects) do |box_project|
  json.extract! box_project, :id, :titulo, :descricao, :topico, :link, :grafico
  json.url box_project_url(box_project, format: :json)
end
