class CreateLocacaos < ActiveRecord::Migration[5.0]
  def change
    create_table :locacaos do |t|
      t.string :placa
      t.references :vaga, foreign_key: true

      t.timestamps
    end
  end
end
