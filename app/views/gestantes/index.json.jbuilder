json.array!(@gestantes) do |gestante|
  json.extract! gestante, :ano, :nome, :endereco, :ultima_regra, :parto, :vacina1, :vacina2, :vacina3, :vacinaR, :puerperio1, :puerperio2
  json.url gestante_url(gestante, format: :json)
end
