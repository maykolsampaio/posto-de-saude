class PessoaTransporte < ActiveRecord::Migration
  def change
  	create_table :pessoas_transportes do |t|
  		t.references :pessoa, :transporte
  		t.timestamps
  	end
  end
end
