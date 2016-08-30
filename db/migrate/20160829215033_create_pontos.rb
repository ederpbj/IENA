class CreatePontos < ActiveRecord::Migration[5.0]
  def change
    create_table :pontos do |t|
      t.integer :id_frequencia
      t.references :celula, foreign_key: true
      t.date :data
      t.references :membro, foreign_key: true

      t.timestamps
    end
  end
end
