class Product < ActiveRecord::Base
	validates :title, presence: true
	belongs_to :category
	has_many :variants
end