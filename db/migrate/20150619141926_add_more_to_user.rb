class AddMoreToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address_line_1, :string
    add_column :users, :address_line_2, :string
    add_column :users, :postcode, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
