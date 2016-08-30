class CreateCelulas < ActiveRecord::Migration[5.0]
  def change
    create_table :celulas do |t|
      t.integer :id_celula
      t.string :nome
      t.date :data_iniciada
      t.string :endereco
      t.references :anfitriao, foreign_key: true
      t.references :membro, foreign_key: true
      t.date :dia
      t.string :cep

      t.timestamps
    end
  end
end
