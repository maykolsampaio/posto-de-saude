class AddDoencasAndPessoas < ActiveRecord::Migration
  def change
  	create_table :doencas_pessoas do |t|
  		t.references :doenca, :pessoa
  		t.timestamps
  	end
  end
end
