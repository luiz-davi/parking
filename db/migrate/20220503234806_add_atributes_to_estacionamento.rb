class AddAtributesToEstacionamento < ActiveRecord::Migration[5.0]
  def change
    add_column :estacionamentos, :preco_vaga, :float
    add_column :estacionamentos, :taxa, :float
  end
end
