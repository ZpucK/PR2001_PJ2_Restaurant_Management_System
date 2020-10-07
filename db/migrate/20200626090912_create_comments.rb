class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :contents
      t.references :user, null: false
      t.references :dish, null: false
      t.timestamps
    end
  end
end
