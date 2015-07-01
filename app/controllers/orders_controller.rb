class OrdersController < ApplicationController
  before_filter :authenticate_user!
  def new
    @order = Order.new
  end
  
  def create
    @order = current_user.orders.new(order_params)
    @order.email = current_user.email
    @order.name = current_user.name
    @order.address_line_1 = current_user.address_line_1
    @order.address_line_2 = current_user.address_line_2
    @order.postcode = current_user.postcode
    @order.city = current_user.city
    @order.country = current_user.country
    if @order.save
      redirect_to dconfirmation_path
    end
  end

  def order_params
    params.require(:order).
      permit(
        :email,
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
