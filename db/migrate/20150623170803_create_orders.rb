class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :delivery_name
      t.string :company_name
      t.string :delivery_address1
      t.string :delivery_address2
      t.string :delivery_address3
      t.string :delivery_city
      t.string :delivery_postcode
      t.string :delivery_country
      t.integer :phone
      t.text :package_contents
      t.text :description_content
      t.boolean :restricted_items
      t.boolean :terms_conditions
      t.boolean :insurance
      t.integer :contents_value
      t.string :cf_reference
      t.string :reference_number

      t.timestamps null: false
    end
  end
end
