class SessionsController < ApplicationController

	def create
		user = User.find_by(email: login_params[:email])
		if user && user.authenticate(login_params[:password])
			session[:user_id] = user.id
			@current_user = user.email
			redirect_to root_path
		elsif user
			flash[:error] = "Your email and password don't match.  Please try again."
			redirect_to root_path
		else
			flash[:error] = "We can't find that email in our database"
			redirect_to root_path
		end
	end

	private

	def login_params
		params.permit(:email, :password)
	end

end