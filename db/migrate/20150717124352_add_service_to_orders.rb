class AddServiceToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :service, :string
  end
end
