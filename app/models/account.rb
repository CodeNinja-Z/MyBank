class Account < ActiveRecord::Base
	belongs_to :child
	has_many :transactions
end
