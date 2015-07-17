class DashboardController < ApplicationController
  
  before_filter :authenticate_user!
 
  def index
  end

  def admindashboard
    (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
  end
  
  def adminuser
    (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
  end
  
  def dadmin
    (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
    @order = Order.order("name").page(params[:page]).per(1)
  end
  
  def myorders
    @order = current_user.orders.order("name").page(params[:page]).per(1)
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def label
    @order = current_user.orders.order("name").page(params[:page]).per(1)
  end
  
end