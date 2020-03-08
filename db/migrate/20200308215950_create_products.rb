class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.integer :price, precision: 6, scale: 2

      t.timestamps
    end
  end
end
