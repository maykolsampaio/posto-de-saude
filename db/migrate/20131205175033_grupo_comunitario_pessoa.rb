class GrupoComunitarioPessoa < ActiveRecord::Migration
  def change
  	create_table :grupo_comunitarios_pessoas do |t|
  		t.references :grupo_comunitario, :pessoa
  		t.timestamps
  	end
  end
end
