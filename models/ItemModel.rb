class Item < ActiveRecord::Base
	
	has_many :totals
	has_many :orders, through: :totals

end