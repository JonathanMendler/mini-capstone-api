class Product < ApplicationRecord
  belongs_to :supplier
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :users, through: :carted_products

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  def is_discounted?
    if price <= 10
      true
    else
      false
    end
  end

  def tax
    tax = price * 0.09
  end

  def total
    total = price + tax
  end

  # This is what line 2 does*
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def images
    Image.where(product_id: id)
  end

  #This is what line 5 does*
  # def categories
  #   category_products.map do |category_product|
  #     category_product.category
  #   end
  # end
end
