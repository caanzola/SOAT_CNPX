class CreatePolizas < ActiveRecord::Migration[5.2]
  def change
    create_table :polizas do |t|
      t.string :name

      t.timestamps
    end
  end
end







