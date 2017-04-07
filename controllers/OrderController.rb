class OrderController < ApplicationController

	get '/' do

		if session[:logged_in]
			@username = session[:username]

			@order_id = session[:order_id]
			@amount   = session[:amount]
			

			@total_check_out = Total.where(order_id: @order_id)
			
			@total_check_out.each do |total|
			@bill = (total.item.price + total.item.price)

			end
			erb :check_out
		else
			@message = "You are not logged in"
			erb :home
		end
			
	end
end