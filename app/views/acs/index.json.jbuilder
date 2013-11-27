json.array!(@acs) do |ac|
  json.extract! ac, :nome, :sinan, :endereco, :idade, :sexo
  json.url ac_url(ac, format: :json)
end
