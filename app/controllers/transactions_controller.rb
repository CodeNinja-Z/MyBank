class TransactionsController < ApplicationController

	def create
		@transaction = Transaction.new(transaction_params)
	end 

	def index
		@transactions = Transaction.all
	end 

	private 

	def request_params
		params.require(:request).permit(:name, :type, :amount, :description, :date, :account_id, :parent_id)
	end 

end
