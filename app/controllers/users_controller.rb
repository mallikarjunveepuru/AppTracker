class UsersController < ApplicationController

	def new
		@user = User.new
		
	end

	def create # creates new user
		@user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))

		if @user.save
			
			session[:user_id] = @user.id
			redirect_to apps_path
		else
			
			render :new
		end
	end
end
