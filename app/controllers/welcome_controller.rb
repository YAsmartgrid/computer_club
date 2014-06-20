class WelcomeController < ApplicationController
  def index
  	@user = current_user if user_signed_in?
  	@records = Record.all.order( 'id DESC' )
  end
end
