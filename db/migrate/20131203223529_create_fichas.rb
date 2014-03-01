class CreateFichas < ActiveRecord::Migration
  def change
    create_table :fichas do |t|
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cep
      t.string :municipio
      t.integer :segmento
      t.integer :area
      t.integer :micro_area
      t.integer :ficha
      t.date :data
      t.string :tipo_casa
      t.integer :comodos
      t.string :energia_eletrica
      t.string :destino_lixo
      t.string :tratamento_agua
      t.string :abastecimento_agua
      t.string :destino_fezes

      t.timestamps
    end
  end
end
