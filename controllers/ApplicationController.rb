class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require

	enable :sessions

	ActiveRecord::Base.establish_connection(
		adapter: 'postgresql',
		database: 'lobster'

		)

	set :views, File.expand_path('../../views', __FILE__)
	set :public_dir, File.expand_path('../../public', __FILE__)

	set :session_secret, 'dont trust anyone who doesnt have wu-tang on their ipod'

	not_found do
		erb :not_found
	end	


end