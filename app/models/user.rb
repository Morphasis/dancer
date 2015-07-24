class User < ActiveRecord::Base
  ActiveAdmin.register User do
    permit_params :email, :password
  end
  after_create

  def password_required?
    new_record? ? false : super
  end
  
  has_many :orders
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable , :registerable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
