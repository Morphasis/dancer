class User < ActiveRecord::Base
  has_many :orders
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable , :registerable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
