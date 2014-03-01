json.array!(@doencas) do |doenca|
  json.extract! doenca, :nome, :descricao
  json.url doenca_url(doenca, format: :json)
end
