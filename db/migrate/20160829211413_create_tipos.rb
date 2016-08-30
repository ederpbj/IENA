class CreateTipos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipos do |t|
      t.integer :id_tipo
      t.string :nome

      t.timestamps
    end
  end
end
