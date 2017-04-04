class HomeController < ApplicationController

	get '/' do
		
		erb :home
	end

	post '/' do

		username = params[:username]
		password = params[:username]

		user = User.find_by(username: username)
		if user && user.authrnticate(password)
			session[:logged_in] = true
			session[:username] = user
			session[:user_id] = user.id
			redirect '/menu'
		else
			@message = 'username or password were incorrect'
			erb :home
		end
	end

	get '/register' do 
		erb :register
	end

	post '/register' do
		user = User.new

		user.username   = params["username"]
		user.password   = params["password"]
		user.email      = params["email"]
		user.first_name = params["first_name"]
		user.last_name  = params["last_name"]
		user.phone      = params["phone"]
		user.save

		redirect '/home/login'
	end

	get '/logout' do
		session.destroy

		redirect '/home'
	end

end