class OrderController < ApplicationController

	get '/' do

		# @order = Order.new
		# @order.user_id = session[:user_id]
		# @order.save

		
	
		# body = JSON.parse(request.body.read)
		# puts body["items"]
		# # binding.pry

		# body["items"].each do |item|
		# 	@total = Total.new
		# 	@total.order_id = @order.id
		# 	@total.item_id = item["item_id"].to_i
		# 	@total.amount = item["amount"].to_i
		# 	@total.save
			
		# end

		@totalOrder = Total.where(order_id: @order.id)

		erb :check_out
	end
end