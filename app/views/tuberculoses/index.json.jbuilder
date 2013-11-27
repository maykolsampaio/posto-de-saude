json.array!(@tuberculoses) do |tuberculose|
  json.extract! tuberculose, :ano, :data_da_visita, :reacoes_indesejaveis, :data_da_ultima_consulta, :exame_escarro, :comunicantes_examinados, :bcg_menor_cinco_anos, :comunicantes_existentes, :comunicantes_examinados, :comunicantes_menor_cinco_anos
  json.url tuberculose_url(tuberculose, format: :json)
end
