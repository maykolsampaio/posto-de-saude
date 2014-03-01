class ComunicacaoPessoa < ActiveRecord::Migration
  def change
  	create_table :comunicacaos_pessoas do |t|
  		t.references :comunicacao, :pessoa
  		t.timestamps
  	end
  end
end
