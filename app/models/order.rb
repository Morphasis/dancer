class Order < ActiveRecord::Base
  belongs_to :user
  scope :not_completed_orders, -> {
    where(:complete => false)
  }
end