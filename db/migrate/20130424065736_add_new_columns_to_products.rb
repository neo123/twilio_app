class AddNewColumnsToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :client_id, :integer
  	add_column :products, :name, :string
  	add_column :products, :service_name, :string
  	add_column :products, :quantity, :integer
  end
end
