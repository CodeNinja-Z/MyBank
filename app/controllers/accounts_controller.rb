class AccountsController < ApplicationController

	def create
		@account = Account.new(account_params)
	end 

	def index
	end 

	def show
	end 

	def add_child
	end 

	private

	def account_params
		params.require(:account).permit(:total_amount, :parent_id, :child_id)
	end 

end
