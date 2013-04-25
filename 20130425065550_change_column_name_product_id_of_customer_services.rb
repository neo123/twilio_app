class ChangeColumnNameProductIdOfCustomerServices < ActiveRecord::Migration
  def up
  	rename_column :customer_services, :product_id, :customer_id
  end

  def down
  	rename_column :customer_services, :customer_id, :product_id
  end
end
