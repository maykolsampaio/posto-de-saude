json.array!(@resultado_gestacaos) do |resultado_gestacao|
  json.extract! resultado_gestacao, :nv, :nm, :ab
  json.url resultado_gestacao_url(resultado_gestacao, format: :json)
end
