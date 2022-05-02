class CreateVagas < ActiveRecord::Migration[5.0]
  def change
    create_table :vagas do |t|
      t.references :estacionamento, foreign_key: true, default: 1
      t.boolean :disponibilidade, default: true
      t.float :preco, default: 6

      t.timestamps
    end
  end
end
