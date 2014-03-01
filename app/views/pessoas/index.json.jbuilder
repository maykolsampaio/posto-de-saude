json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :d, :nome, :data_nascimento, :sexo, :alfabetizado, :frequenta_escola, :ocupacao_id, :doencas_id, :nome_plano_de_saude, :meio_comunicacao, :cooperativa, :religiao, :transporte, :ficha_id
  json.url pessoa_url(pessoa, format: :json)
end
