class CreateGestantes < ActiveRecord::Migration
  def change
    create_table :gestantes do |t|
      t.integer :ano
      t.string :nome
      t.string :endereco
      t.date :ultima_regra
      t.date :parto
      t.date :vacina1
      t.date :vacina2
      t.date :vacina3
      t.date :vacinaR
      t.date :puerperio1
      t.date :puerperio2

      t.timestamps
    end
  end
end
