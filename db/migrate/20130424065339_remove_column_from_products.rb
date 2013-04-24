class RemoveColumnFromProducts < ActiveRecord::Migration
  def up
  	remove_column :products, :username
  	remove_column :products, :secrete_token
  	remove_column :products, :in_stock
  	remove_column :products, :package_status
  	remove_column :products, :account_balance
  end

  def down
  	add_column :products, :username, :string
  	add_column :products, :secrete_token, :string
  	add_column :products, :in_stock, :integer
  	add_column :products, :package_status, :string
  	add_column :products, :account_balance, :float
  end
end
