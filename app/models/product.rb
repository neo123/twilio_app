class Product < ActiveRecord::Base
  attr_accessible :client_id, :name, :service_name, :quantity
end
