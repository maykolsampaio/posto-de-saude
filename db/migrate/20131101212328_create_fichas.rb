class CreateFichas < ActiveRecord::Migration
  def change
    create_table :fichas do |t|
      t.integer :codigo
      t.string :endereco
      t.integer :numero
      t.string :bairro
      t.integer :cep
      t.string :municipio
      t.integer :segmento
      t.integer :area
      t.integer :microarea
      t.date :data
      t.string :tipocasa
      t.integer :comodos
      t.string :energia_eletrica
      t.string :destino_lixo
      t.string :tratamento_agua
      t.string :abastecimento_agua
      t.string :destino_fezes_urina
      t.string :plano_saude
      t.integer :pessoas_plano
      t.string :nome_plano
      t.string :caso_doenca
      t.string :meio_comunicacao
      t.string :participa_cooperativa
      t.string :participa_grupo_religioso
      t.string :transporte

      t.timestamps
    end
  end
end
