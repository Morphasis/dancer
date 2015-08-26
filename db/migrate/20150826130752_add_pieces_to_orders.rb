class AddPiecesToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :pieces, :string
  end
end
