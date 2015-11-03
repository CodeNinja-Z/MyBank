class AccountsController < ApplicationController

	before_action :authenticate_user!

	def create
		@account = Account.new(account_params)
	end 

	def index
		@accounts = Account.all
	end 

	def show
		@account = Account.find(params[:id])
	end 

	def destroy 
		@account = Account.find(params[:id])
		@account.destroy
	end 

	private

	def account_params
		params.require(:account).permit(:total_amount, :parent_id, :child_id)
	end 

end
