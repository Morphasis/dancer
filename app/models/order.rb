class Order < ActiveRecord::Base
  
  belongs_to :user
  scope :not_completed_orders, -> {
    where(:complete => false)
  }

  include MailForm::Delivery

  # append :remote_ip, :user_agent, :session
  # attributes :name, :email, :created_at

  def headers
    {
      :to => "jacksharville@gmail.com",
      :from => "ops@dms-intl.com",
      :subject => "A new order has been placed on the DMS website."
    }
  end
end