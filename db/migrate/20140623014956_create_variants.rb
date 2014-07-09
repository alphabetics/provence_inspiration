class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.string :variant
      t.float :price
      t.timestamps
    end
  end
end
