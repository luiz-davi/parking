class CreateAberturas < ActiveRecord::Migration[5.0]
  def change
    create_table :aberturas do |t|
      t.float :valor
      t.references :user, foreign_key: true
      t.references :caixa, foreign_key: true

      t.timestamps
    end
  end
end
