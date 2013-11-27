class CreateFatorRiscos < ActiveRecord::Migration
  def change
    create_table :fator_riscos do |t|
      t.string :desc

      t.timestamps
    end
  end
end
