class CreateTransportes < ActiveRecord::Migration
  def change
    create_table :transportes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
