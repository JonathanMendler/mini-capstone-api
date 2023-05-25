class CartedProductsController < ApplicationController
  
  def index
    if current_user
      @carted_products = current_user.carted_products
      render :index
    else
      render json: [], status: :unauthorized
    end
  end
  
  def create
    if current_user
      @carted_product = CartedProduct.create(
        user_id: current_user.id,
        product_id: params["product_id"],
        quantity: params["quantity"],
        status: params["status"],
        order_id: params["order_id"],
      )

      render :show
    end
  end
end
