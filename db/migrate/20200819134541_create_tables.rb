class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.string :name
      t.integer :people
      t.integer :status
      t.timestamps
    end
  end
end
