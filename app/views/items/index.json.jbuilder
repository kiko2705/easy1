json.array!(@items) do |item|
  json.extract! item, :id, :tipo, :conteudo
  json.url item_url(item, format: :json)
end
