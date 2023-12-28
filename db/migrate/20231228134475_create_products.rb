class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.references :category
      t.integer :quantity, default: 0, null: false
      t.float :price, default: 0, null: false

      t.timestamps
    end
  end
end
