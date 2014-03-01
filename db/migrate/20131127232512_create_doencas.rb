class CreateDoencas < ActiveRecord::Migration
  def change
    create_table :doencas do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
