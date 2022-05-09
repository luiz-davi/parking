class CreateVendas < ActiveRecord::Migration[5.0]
  def change
    create_table :vendas do |t|
      t.references :user, foreign_key: true
      t.references :caixa, foreign_key: true
      t.float :valor
      t.integer :tipo_pagamento
      t.references :locacao, foreign_key: true

      t.timestamps
    end
  end
end
