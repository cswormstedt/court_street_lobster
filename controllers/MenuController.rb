class MenuController < ApplicationController

	get '/' do
		# if session[:logged_in]
		# 	@username = session[:username]
		@menu = Menu.all

		erb :menu

		# else
		# 	@message = "You are not logged in"
		# 	erb :home
		# end
	end

end