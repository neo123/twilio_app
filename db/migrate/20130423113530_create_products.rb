class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :username
      t.string :secrete_token
      t.integer :in_stock

      t.timestamps
    end
  end
end
