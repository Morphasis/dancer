class Order < ActiveRecord::Base
  belongs_to :user
  scope :complete, -> {
    where(:complete => nil)
  }
end