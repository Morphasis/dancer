class AddUserIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :user_id, :integer
    add_column :orders, :name, :string
    add_column :orders, :address_line_1, :string
    add_column :orders, :address_line_2, :string
    add_column :orders, :postcode, :string
    add_column :orders, :city, :string
    add_column :orders, :country, :string
  end
end
