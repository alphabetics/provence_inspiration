class RenameVariantToTitleInVariants < ActiveRecord::Migration
  def change
  	remove_column :variants, :variant
  	add_column :variants, :title, :string
  end
end
