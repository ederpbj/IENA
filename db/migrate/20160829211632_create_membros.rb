class CreateMembros < ActiveRecord::Migration[5.0]
  def change
    create_table :membros do |t|
      t.integer :id_membro
      t.string :nome
      t.date :data_aniversario
      t.references :tipo, foreign_key: true
      t.string :endereco
      t.string :cep
      t.string :telefone

      t.timestamps
    end
  end
end
