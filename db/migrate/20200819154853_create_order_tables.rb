class CreateOrderTables < ActiveRecord::Migration[5.2]
  def change
    create_table :order_tables do |t|
      t.references :order, null: false, foreign_key: true
      t.references :table, null: false, foreign_key: true
      t.timestamps
    end
  end
end
