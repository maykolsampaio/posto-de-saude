json.array!(@ocupacaos) do |ocupacao|
  json.extract! ocupacao, :nome
  json.url ocupacao_url(ocupacao, format: :json)
end
