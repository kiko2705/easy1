json.array!(@contribuicaos) do |contribuicao|
  json.extract! contribuicao, :id, :versao, :data, :arquivo, :user_id
  json.url contribuicao_url(contribuicao, format: :json)
end
