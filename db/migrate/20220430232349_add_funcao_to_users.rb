class AddFuncaoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :funcao, :integer, default: 2
  end
end
