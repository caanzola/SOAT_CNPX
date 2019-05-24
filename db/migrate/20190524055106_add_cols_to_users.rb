class AddColsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Tipo_documento, :string
    add_column :users, :Numero_documento, :integer
    add_column :users, :Apellidos, :string
    add_column :users, :Telefono, :integer
  end
end
