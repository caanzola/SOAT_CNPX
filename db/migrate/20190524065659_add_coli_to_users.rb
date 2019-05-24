class AddColiToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sesionactiva, :string
  end
end
