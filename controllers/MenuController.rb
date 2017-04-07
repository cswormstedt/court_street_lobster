class MenuController < ApplicationController

	get '/' do
		
		if session[:logged_in]
			@username = session[:username]
			@items = Item.all
		

		erb :menu

		else
			@message = "You are not logged in"
			erb :home
		end
	end

	post '/' do

		p'--------------'
		puts params 


		@order = Order.new
		@order.user_id = session[:user_id]
		@order.save

		session[:order_id] = @order.id
		

		body = JSON.parse(request.body.read)
		puts body["items"]

	
		body["items"].each do |item|
			@total = Total.new
			@total.order_id = @order.id
			@total.item_id = item["item_id"].to_i
			@total.amount = item["amount"].to_i
			@total.save

			
		end
			session[:amoun] = @total.amount
		 @totalOrder = Total.where(order_id: @order.id)
		'success'

	end

	

end