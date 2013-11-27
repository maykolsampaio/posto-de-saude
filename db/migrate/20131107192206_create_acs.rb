class CreateAcs < ActiveRecord::Migration
  def change
    create_table :acs do |t|
      t.string :nome
      t.integer :sinan
      t.string :endereco
      t.integer :idade
      t.string :sexo

      t.timestamps
    end
  end
end
