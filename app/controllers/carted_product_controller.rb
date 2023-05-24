class CartedProductController < ApplicationController
  def create
    if current_user && current_user.admin
      @carted_product = CartedProduct.create(
        name: params["name"],
        price: params["price"],
        description: params["description"],
        supplier_id: params["supplier_id"],
      )
    end

    if @product.valid?
      Image.create(product_id: @product.id, url: params["image_url"])
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
