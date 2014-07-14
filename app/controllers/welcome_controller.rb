class WelcomeController < ApplicationController
  def index
  	@user = current_user if user_signed_in?
  	@records = Record.all.order( 'id DESC' )

  	@plans = Plan.find(:all, :order => "id desc", :limit => 6).reverse
  end

  def join
		@plan = Plan.find(params[:id])
		@plan.users << current_user
		
		if @plan.save
			# flash[:success] = "Success!"
			#redirect_to action: 'show'
			redirect_to welcome_index_path
		else
			flash[:success] = "ERROR"
			redirect_to welcome_index_path
		end
	end

	def leave
		@plan = Plan.find(params[:id])
		@plan.users.delete(current_user)

		if @plan.save
			# flash[:success] = "success"
			redirect_to welcome_index_path
		else
			flash[:success] = "ERROR"
			redirect_to welcome_index_path
		end
	end
end
