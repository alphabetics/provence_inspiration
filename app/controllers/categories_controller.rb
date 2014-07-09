class CategoriesController < ApplicationController

	def new
		@category = Category.new
		@categories = Category.all
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			flash[:success] = "Category created!"
			redirect_to category_path(@category)
		else
			render 'new'
		end
	end

	def show
		@category = Category.find(params[:id])
		@products = @category.products
	end


	private
		def category_params
			params.require(:category).permit(:title, :description, :img)	
		end
end
