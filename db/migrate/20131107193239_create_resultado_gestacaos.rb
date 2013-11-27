class CreateResultadoGestacaos < ActiveRecord::Migration
  def change
    create_table :resultado_gestacaos do |t|
      t.string :nv
      t.string :nm
      t.string :ab

      t.timestamps
    end
  end
end
