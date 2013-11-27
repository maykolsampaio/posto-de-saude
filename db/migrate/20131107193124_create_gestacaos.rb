class CreateGestacaos < ActiveRecord::Migration
  def change
    create_table :gestacaos do |t|
      t.string :mes
      t.string :estado_nutricional
      t.date :pre_natal
      t.date :visita_acs

      t.timestamps
    end
  end
end
