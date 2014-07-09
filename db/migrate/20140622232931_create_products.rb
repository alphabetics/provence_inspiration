class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.float :price
      t.text :description
      t.integer :inventory

      t.timestamps
    end
  end
end