class OrderController < ApplicationController

	get '/' do

		if session[:logged_in]
			@username = session[:username]

			@order_id = session[:order_id]
			
			@total_check_out = Total.where(order_id: @order_id)

			price = 0
			ticket = []
			@total_check_out.each_with_index do |item,i|
				
				ticket.push(@total_check_out[0].item.price * @total_check_out[0][:amount])

			end  
			
			@bill = ticket.inject(:+)
	
			erb :check_out
		else
			@message = "You are not logged in"
			erb :home
		end
			
	end
end