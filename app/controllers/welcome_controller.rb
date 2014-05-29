class WelcomeController < ApplicationController

	def index
		if session[:user_id]
			@current_user = User.find(session[:user_id]).email
		else
			@current_user = "Human!"
		end
	end
end