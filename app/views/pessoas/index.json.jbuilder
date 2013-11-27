json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :nome, :data_de_nascimento, :idade, :sexo, :alfabetizado_ou_na_escola, :ocupacao, :doenca
  json.url pessoa_url(pessoa, format: :json)
end
