class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :name
      t.string :type
      t.float :amount
      t.datetime :date
      t.integer :account_id
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
