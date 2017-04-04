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

		@order = Order.new
		@order.user_id = session[:user_id]
		@order.save

		
		body = JSON.parse(request.body.read)
		puts body["items"]

		# @total = Total.new
		# @total.order_id = @order.id
		# @total.item_id  = params["item_id"]
		# @total.amount = params["amount"]
		# @total.save
		# erb :check_out

	end

end