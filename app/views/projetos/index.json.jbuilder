json.array!(@projetos) do |projeto|
  json.extract! projeto, :id, :nome, :descricao, :data_inicio, :status
  json.url projeto_url(projeto, format: :json)
end
