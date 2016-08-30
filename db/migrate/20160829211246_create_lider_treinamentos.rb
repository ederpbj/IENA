class CreateLiderTreinamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :lider_treinamentos do |t|
      t.integer :id_lider_treinamento
      t.references :membro, foreign_key: true
      t.references :celula, foreign_key: true

      t.timestamps
    end
  end
end
