class UsersController < ApplicationController

	def new
		@user = User.new 
	end

	def create
		@user = User.new(accept_params)
		if @user.save
			render 'thank_you'
		else
			render 'new'
		end
	end

	private
	def accept_params
		params.require(:user).permit(:first_name, :last_name, :email_id, :password)
	end

end
