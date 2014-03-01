class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.date :data_nascimento
      t.string :sexo
      t.string :alfabetizado
      t.string :frequenta_escola
      t.references :ocupacao, index: true
      t.references :doenca, index: true
      t.string :nome_plano_de_saude
      t.references :comunicacao, index: true
      t.references :grupo_comunitario, index: true
      t.references :transporte, index: true
      t.references :ficha, index: true
      t.timestamps
    end
  end
end
