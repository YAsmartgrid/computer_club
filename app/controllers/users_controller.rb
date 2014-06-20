class UsersController < ApplicationController
	before_filter :authenticate_user!

	def index
		@user = User.all
	end




	private
	def user_params
		params.require(:user).permit(:name, :grade)
	end
end
