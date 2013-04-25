class Product < ActiveRecord::Base
  attr_accessible :client_id, :name, :service_name, :quantity
  has_many :customer_services
  has_many :services, :through => :customer_services
end
