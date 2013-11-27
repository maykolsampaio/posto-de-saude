json.array!(@gestacaos) do |gestacao|
  json.extract! gestacao, :mes, :estado_nutricional, :pre_natal, :visita_acs
  json.url gestacao_url(gestacao, format: :json)
end
