class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :contents
      t.integer :money
      t.string :image_dish
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
