json.array!(@hiperdia) do |hiperdium|
  json.extract! hiperdium, :numero_da_familia, :ano, :fumante, :data_da_visita, :dieta, :toma_medicacao, :exercicios_fisicos, :pa, :licemia, :insulina, :hipoglicemiante_oral, :data_da_ultima_consulta, :obs
  json.url hiperdium_url(hiperdium, format: :json)
end
