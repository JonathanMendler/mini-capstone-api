class Product < ApplicationRecord
  def product
    render json: { message: "hello" }
  end
end
