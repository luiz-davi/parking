class CreateVagas < ActiveRecord::Migration[5.0]
  def change
    create_table :vagas do |t|
      t.references :estacionamento, foreign_key: true
      t.boolean :disponibilidade, default: true
      t.float :preco

      t.timestamps
    end
  end
end
