class CreateDebites < ActiveRecord::Migration[5.0]
  def change
    create_table :debites do |t|
      t.references :user, foreign_key: true
      t.references :estacionamento, foreign_key: true
      t.references :caixa, foreign_key: true
      t.integer :valor
      t.text :motivo

      t.timestamps
    end
  end
end
