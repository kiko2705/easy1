json.array!(@bugs) do |bug|
  json.extract! bug, :id, :numero, :descricao, :dificuldade, :colaborador
  json.url bug_url(bug, format: :json)
end
