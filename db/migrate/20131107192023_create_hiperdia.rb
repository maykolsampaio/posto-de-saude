class CreateHiperdia < ActiveRecord::Migration
  def change
    create_table :hiperdia do |t|
      t.integer :numero_da_familia
      t.integer :ano
      t.string :fumante
      t.date :data_da_visita
      t.string :dieta
      t.string :toma_medicacao
      t.string :exercicios_fisicos
      t.string :pa
      t.string :licemia
      t.string :insulina
      t.string :hipoglicemiante_oral
      t.date :data_da_ultima_consulta
      t.string :obs

      t.timestamps
    end
  end
end
