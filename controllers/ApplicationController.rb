class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require

	# require 'twilio-ruby'

	# account_sid = 'AC2200e4e159852a7b5f227158058113c0'
	# auth_token = '[AUTH]'

	enable :sessions

	
	db = URI.parse(ENV['DATABASE_URL'])

  	DB_NAME = db.path[1..-1]

	  ActiveRecord::Base.establish_connection(
	    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
	    :host     => db.host,
	    :port     => db.port,
	    :username => db.user,
	    :password => db.password,
	    :database => DB_NAME,
	    :encoding => 'utf8'
	  )
	

	# ActiveRecord::Base.establish_connection(
	# 	adapter: 'postgresql',
	# 	database: 'lobster'

	# 	)

	set :views, File.expand_path('../../views', __FILE__)
	set :public_dir, File.expand_path('../../public', __FILE__)

	set :session_secret, 'dont trust anyone who doesnt have wu-tang on their ipod'

	not_found do
		erb :not_found
	end	

	get '/logout' do
		session.destroy

		redirect '/home'
	end


end