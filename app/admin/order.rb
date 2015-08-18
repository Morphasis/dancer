ActiveAdmin.register Order do
  scope :not_completed_orders
  menu priority: 3
  batch_action :manifest do |ids|
    redirect_to "/admin/orders.csv?q[id_in][]=" + ids.join("&q[id_in][]=")
  end

  index do
    selectable_column
    column :id
    column :user
    column :name
    column :delivery_name
    column :complete
    column :delivery_address1
    column :service
    column :insurance
    actions
  end

  csv do
    column("Order Placed On"){ |order| order.created_at }
    column("Client Name"){ |order| order.name }
    column("Delivery Recipient Name"){ |order| order.delivery_name }
    column "Consignment Reference number" do |user|
      "#{user.id} CR" 
    end
  end

  permit_params do
    permitted = [:email ,:country ,:city ,:postcode, :address_line_2, :address_line_1 ,:user_id, :name, :delivery_name, :company_name, :delivery_address1, :delivery_address2, :delivery_address3, :delivery_city, :delivery_postcode, :delivery_country, :phone, :package_contents, :description_content, :restricted_items, :terms_conditions, :insurance, :contents_value, :cf_reference, :reference_number, :complete]
    permitted
  end
end
# completed_at