class AddColumnToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :package_status, :string
  	add_column :products, :account_balance, :float
  end
end
