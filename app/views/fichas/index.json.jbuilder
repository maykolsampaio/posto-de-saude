json.array!(@fichas) do |ficha|
  json.extract! ficha, :codigo, :endereco, :numero, :bairro, :cep, :municipio, :segmento, :area, :microarea, :data, :tipocasa, :comodos, :energia_eletrica, :destino_lixo, :tratamento_agua, :abastecimento_agua, :destino_fezes_urina, :plano_saude, :pessoas_plano, :nome_plano, :caso_doenca, :meio_comunicacao, :participa_cooperativa, :participa_grupo_religioso, :transporte
  json.url ficha_url(ficha, format: :json)
end
