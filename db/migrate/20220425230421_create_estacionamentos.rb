class CreateEstacionamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :estacionamentos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
