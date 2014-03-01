class CreateGrupoComunitarios < ActiveRecord::Migration
  def change
    create_table :grupo_comunitarios do |t|
      t.string :nome

      t.timestamps
    end
  end
end
