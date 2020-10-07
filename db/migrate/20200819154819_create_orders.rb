class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :table, null: false, foreign_key: true
      t.integer :people
      t.datetime :timeorder
      t.timestamps
    end
  end
end
