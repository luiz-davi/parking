class CreateFechamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :fechamentos do |t|
      t.references :user, foreign_key: true
      t.references :caixa, foreign_key: true
      t.float :valor
      t.text :obs
      t.float :valor_anterior
      t.integer :status

      t.timestamps
    end
  end
end
