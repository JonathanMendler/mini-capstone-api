class Order < ApplicationRecord
  belongs_to :product
  has_many :user
end
