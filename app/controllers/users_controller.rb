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

	def login
			
	end

	def login_process
	  user = User.find_by("email_id =? and password = ?", params[:email_id], params[:password])
		if user.nil?
			render 'login', locals: { error: 'Incorect user name or password' }
		else
			session[:user_id] = user.id
			session[:email_id] = user.email_id
			session[:first_name] = user.first_name
			session.delete(:user_id)
			redirect_to controller: 'articles', action: 'index'
		end
	end

	private
	def accept_params
		params.require(:user).permit(:first_name, :last_name, :email_id, :password)
	end

end
