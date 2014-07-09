class VariantsController < ApplicationController
	def new
		@variant = Variant.new
		@variants = Variant.all
		@products = Product.all
	end

	def create
		@variant = Variant.new(variant_params)
		if @variant.save
			flash[:success] = "Variant Created!"
			redirect_to :back
		else
			render 'new'
		end
	end


		private

			def variant_params
				params.require(:variant).permit(:img, :title, :price, :product_id)
			end
end
