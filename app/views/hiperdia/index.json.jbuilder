json.array!(@hiperdia) do |hiperdium|
  json.extract! hiperdium, :unidade, :ano, :fumante, :visita_acs, :dieta, :medicacao, :exercicios, :pressao_arterial, :ultima_consulta, :mes_id, :observacao, :pessoa_id
  json.url hiperdium_url(hiperdium, format: :json)
end
