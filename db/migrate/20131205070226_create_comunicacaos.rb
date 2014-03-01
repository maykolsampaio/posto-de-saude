class CreateComunicacaos < ActiveRecord::Migration
  def change
    create_table :comunicacaos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
