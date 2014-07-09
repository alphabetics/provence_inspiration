class ProductsController < ApplicationController

	def new
		@product = Product.new
		@products = Product.all
		@array = Category.pluck(:title)
	end	

	def create #how come this still shows up when we use new/show to crea.pluck(:description)
		@product = Product.new(product_params)
		if @product.save
			flash[:success] = "Product created!"
			redirect_to :back
		else
			render 'new'
		end
	end

	def show
		@product = Product.find(params[:id])	
		@variants = @product.variants
		
		
	end



	def update
	end

	def destroy
	end

	private

		def product_params
			params.require(:product).permit(:category_id, :img, :title, :price, :description, :inventory) 
		end
end