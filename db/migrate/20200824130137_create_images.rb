class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :dish, null: false, foreign_key: true
      t.string :link
      t.timestamps
    end
  end
end
