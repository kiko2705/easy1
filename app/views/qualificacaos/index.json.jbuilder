json.array!(@qualificacaos) do |qualificacao|
  json.extract! qualificacao, :id, :linguagem, :nivelConhecimento
  json.url qualificacao_url(qualificacao, format: :json)
end
