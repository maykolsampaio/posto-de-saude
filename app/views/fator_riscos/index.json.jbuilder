json.array!(@fator_riscos) do |fator_risco|
  json.extract! fator_risco, :desc
  json.url fator_risco_url(fator_risco, format: :json)
end
