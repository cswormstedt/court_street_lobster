class Order < ActiveRecord::Base

	belongs_to :user
	has_many :totals
	has_many :items, through: :totals

end