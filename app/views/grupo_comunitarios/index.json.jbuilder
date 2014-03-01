json.array!(@grupo_comunitarios) do |grupo_comunitario|
  json.extract! grupo_comunitario, :nome
  json.url grupo_comunitario_url(grupo_comunitario, format: :json)
end
