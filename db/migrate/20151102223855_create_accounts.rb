class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.decimal :total_amount
      t.integer :parent_id
      t.integer :child_id

      t.timestamps null: false
    end
  end
end
