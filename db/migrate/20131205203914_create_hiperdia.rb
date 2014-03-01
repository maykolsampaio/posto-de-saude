class CreateHiperdia < ActiveRecord::Migration
  def change
    create_table :hiperdia do |t|
      t.string :unidade
      t.integer :ano
      t.string :fumante
      t.date :visita_acs
      t.string :dieta
      t.string :medicacao
      t.string :exercicios
      t.string :pressao_arterial
      t.date :ultima_consulta
      t.references :mes, index: true
      t.text :observacao
      t.references :pessoa, index: true

      t.timestamps
    end
  end
end
