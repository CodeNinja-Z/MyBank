class DeleteParentTable < ActiveRecord::Migration
  def change
  	drop_table :parents
  end
end
