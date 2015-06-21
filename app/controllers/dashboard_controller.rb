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
  
  def show
    @user = User.find(params[:id])
  end
  
end
