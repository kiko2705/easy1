json.array!(@caixas) do |caixa|
  json.extract! caixa, :id, :nome, :descricao
  json.url caixa_url(caixa, format: :json)
end
