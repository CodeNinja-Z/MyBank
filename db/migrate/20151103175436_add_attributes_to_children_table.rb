class AddAttributesToChildrenTable < ActiveRecord::Migration
  def change
  	add_column :children, :first_name, :string 
  	add_column :children, :last_name, :string 
  	add_column :children, :birthdate, :date 
  end
end
