ActiveAdmin.register_page "Dashboard" do
  content do
    para "Latest Orders"
    table_for Order.order("created_at desc").limit(5) do
      column :deilvery_name do |order|
        link_to order.delivery_name, [:admin, order]
      end
      column :created_at
      column :complete
    end
  end
end
