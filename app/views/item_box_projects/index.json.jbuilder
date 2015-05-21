json.array!(@item_box_projects) do |item_box_project|
  json.extract! item_box_project, :id, :nome, :conteudo
  json.url item_box_project_url(item_box_project, format: :json)
end
