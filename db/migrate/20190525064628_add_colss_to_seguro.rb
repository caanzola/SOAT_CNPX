class AddColssToSeguro < ActiveRecord::Migration[5.2]
  def change
    add_column :seguros, :Subtipo, :string
  end
end
