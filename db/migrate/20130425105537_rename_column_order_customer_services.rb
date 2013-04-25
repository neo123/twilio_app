class RenameColumnOrderCustomerServices < ActiveRecord::Migration
  def up
  	rename_column :customer_services, :order, :position
  end

  def down
  	rename_column :customer_services, :position, :order
  end
end
