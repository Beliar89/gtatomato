class User < ApplicationRecord
  # Include default devise modules. Others available are:
  has_one :setting
  	  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :payments
  
end
