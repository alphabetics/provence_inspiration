class AddImgToVariants < ActiveRecord::Migration
  def change
  	add_column :variants, :img, :string
  end
end
