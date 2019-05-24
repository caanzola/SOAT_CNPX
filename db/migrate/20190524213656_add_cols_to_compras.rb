class AddColsToCompras < ActiveRecord::Migration[5.2]
  def change
    add_column :compras, :Placa_asociada, :string
    add_column :compras, :id_seguro, :integer
  end
end
