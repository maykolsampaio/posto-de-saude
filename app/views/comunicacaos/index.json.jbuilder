json.array!(@comunicacaos) do |comunicacao|
  json.extract! comunicacao, :nome
  json.url comunicacao_url(comunicacao, format: :json)
end
