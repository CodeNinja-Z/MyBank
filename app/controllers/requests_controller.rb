class RequestsController < ApplicationController

	def create
		@request = Request.new(request_params)
	end 

	def index
	end 

	private 

	def request_params
		params.require(:request).permit(:name, :type, :amount, :description, :date, :account_id, :child_id)
	end 

end
