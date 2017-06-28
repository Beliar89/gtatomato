class Setting < ApplicationRecord
  
  belongs_to :user

  # validates :name, presence: {message: :no_name}
   
  
end
