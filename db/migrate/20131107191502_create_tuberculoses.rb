class CreateTuberculoses < ActiveRecord::Migration
  def change
    create_table :tuberculoses do |t|
      t.integer :ano
      t.date :data_da_visita
      t.string :reacoes_indesejaveis
      t.date :data_da_ultima_consulta
      t.string :exame_escarro
      t.string :comunicantes_examinados
      t.integer :bcg_menor_cinco_anos
      t.integer :comunicantes_existentes
      t.integer :comunicantes_examinados
      t.integer :comunicantes_menor_cinco_anos

      t.timestamps
    end
  end
end
