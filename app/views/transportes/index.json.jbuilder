json.array!(@transportes) do |transporte|
  json.extract! transporte, :nome
  json.url transporte_url(transporte, format: :json)
end
