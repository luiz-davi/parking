class AddEntradaSaidaToLocacao < ActiveRecord::Migration[5.0]
  def change
    add_column :locacaos, :entrada, :time
    add_column :locacaos, :saida, :time
  end
end
