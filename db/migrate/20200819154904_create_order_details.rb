class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.references :order, null: false, foreign_key: true
      t.references :dish, null: false, foreign_key: true
      t.integer :quantity
      t.integer :price
      t.integer :cost
      t.string :note

      t.timestamps
    end
  end
end
