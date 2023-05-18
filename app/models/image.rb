class Image < ApplicationRecord
  validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)$}i, :message => "image must be png, jpg, or jpeg", multiline: true

  def products
    Product.where(image_id: id)
  end
end
