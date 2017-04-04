class OrderController < ApplicationController

	get '/' do
		erb :check_out
	end
end