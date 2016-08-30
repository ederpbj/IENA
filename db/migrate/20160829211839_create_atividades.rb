class CreateAtividades < ActiveRecord::Migration[5.0]
  def change
    create_table :atividades do |t|
      t.integer :id_atividade
      t.boolean :encontro
      t.boolean :batismo
      t.boolean :ccc
      t.boolean :ctl
      t.boolean :casado_a
      t.boolean :dizimista

      t.timestamps
    end
  end
end
