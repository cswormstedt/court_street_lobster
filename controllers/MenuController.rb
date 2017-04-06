class MenuController < ApplicationController

	get '/' do
		
		# if session[:logged_in]
		# 	@username = session[:username]
			@items = Item.all
		# binding.pry

		erb :menu


		# else
		# 	@message = "You are not logged in"
		# 	erb :home
		# end
	end

	post '/' do

		p'--------------'
		puts params


		@order = Order.new
		@order.user_id = session[:user_id]
		@order.save

		
	
		body = JSON.parse(request.body.read)
		puts body["items"]
		# binding.pry

		body["items"].each do |item|
			@total = Total.new
			@total.order_id = @order.id
			@total.item_id = item["item_id"].to_i
			@total.amount = item["amount"].to_i
			@total.save
			
		end

		# binding.pry
		 @totalOrder = Total.where(order_id: @order.id)

		# "success"
		'success'

	end

	

end