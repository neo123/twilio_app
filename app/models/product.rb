class Product < ActiveRecord::Base
  attr_accessible :in_stock, :secrete_token, :username, :package_status, :account_balance
end
