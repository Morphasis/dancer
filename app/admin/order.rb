ActiveAdmin.register Order do
  scope :not_completed_orders

  action_item :add do
    link_to "Get Manifest", "/admin/orders.csv"
  end

  index do
    selectable_column
    column :id
    column :delivery_name
    column :complete
    column :delivery_address1
    column :delivery_address2
    actions
  end

  csv do
    column :delivery_name
    column :id 
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  permit_params do
    permitted = [:delivery_name, :company_name, :delivery_address1, :delivery_address2, :delivery_address3, :delivery_city, :delivery_postcode, :delivery_country, :phone, :package_contents, :description_content, :restricted_items, :terms_conditions, :insurance, :contents_value, :cf_reference, :reference_number, :complete]
    permitted
  end
end
