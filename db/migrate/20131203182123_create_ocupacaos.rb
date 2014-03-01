class CreateOcupacaos < ActiveRecord::Migration
  def change
    create_table :ocupacaos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
