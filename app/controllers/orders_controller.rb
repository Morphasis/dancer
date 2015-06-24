class OrdersController < ApplicationController
  before_filter :authenticate_user!
  def new
    @order = Order.new
  end
  
  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to root_path
    end
  end
  
  def order_params
    params.require(:order).
      permit(
        :delivery_name,
        :company_name,
        :delivery_address1,
        :delivery_address2,
        :delivery_address3,
        :delivery_city,
        :delivery_postcode,
        :delivery_country,
        :phone,
        :package_contents,
        :description_content,
        :restricted_items,
        :terms_conditions,
        :insurance,
        :contents_value,
        :cf_reference,
        :reference_number
        )
  end
  def show
    @user = User.find(params[:id])
  end
  
  def confirmation
  end
  
end
