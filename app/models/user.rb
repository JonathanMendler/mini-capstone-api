class User < ApplicationRecord
  belongs_to :order
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
end
