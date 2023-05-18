class Image < ApplicationRecord
  def products
    Product.where(url: id)
  end
end
