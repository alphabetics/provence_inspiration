class AddVariantToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :variant_id, :integer
  	add_index :products, :variant_id
  end
end
