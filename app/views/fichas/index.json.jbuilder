json.array!(@fichas) do |ficha|
  json.extract! ficha, :endereco, :numero, :bairro, :cep, :municipio, :segmento, :area, :micro_area, :ficha, :data, :tipo_casa, :comodos, :energia_eletrica, :destino_lixo, :tratamento_agua, :abastecimento_agua, :destino_fezes
  json.url ficha_url(ficha, format: :json)
end
