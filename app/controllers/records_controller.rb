class RecordsController < ApplicationController
	def create
		@record = Record.new(record_params)
		@record.user_id = current_user.id

		@record.save
		redirect_to welcome_index_path
	end

	private
	def record_params
		params.require(:record).permit(:record_text, :user_id)
	end
end
