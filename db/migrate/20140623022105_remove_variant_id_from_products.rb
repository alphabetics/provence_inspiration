class RemoveVariantIdFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :variant_id
  	add_column :variants, :product_id, :integer
  	add_index :variants, :product_id
  end
end
