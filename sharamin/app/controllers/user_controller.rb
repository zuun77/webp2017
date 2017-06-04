class UserController < ApplicationController
	def register
		u = User.new
		u.name = params[:name]
		u.email = params[:email]
		u.pw = params[:pw]
		u.save
		u = User.where(:email => params[:email],
					   :pw => params[:pw]).take
		session[:user_id] = u.id
	end

	def login
		u = User.where(:email => params[:email],
					   :pw => params[:pw]).take
		session[:user_id] = u.id
	end

	def logout
		reset_session
	end
end
