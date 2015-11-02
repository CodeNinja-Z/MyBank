class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :type
      t.float :amount
      t.text :description
      t.datetime :date
      t.integer :account_id
      t.integer :child_id

      t.timestamps null: false
    end
  end
end
