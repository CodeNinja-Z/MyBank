class ChangeDatatypeForRequests < ActiveRecord::Migration
  def change
  	change_column :requests, :amount, :decimal
  end
end
