class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.date :data_de_nascimento
      t.integer :idade
      t.string :sexo
      t.string :alfabetizado_ou_na_escola
      t.string :ocupacao
      t.string :doenca

      t.timestamps
    end
  end
end
