class CreateCaixas < ActiveRecord::Migration[5.0]
  def change
    create_table :caixas do |t|
      t.boolean :aberto, default: false
      t.references :estacionamento, foreign_key: true, default: 1
      t.float :saldo

      t.timestamps
    end
  end
end
