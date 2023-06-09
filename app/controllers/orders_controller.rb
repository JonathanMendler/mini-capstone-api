class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    product = Product.find_by(id: params["product_id"])
    quantity = params["quantity"].to_i

    caluclated_subtotal = product.price * quantity
    calculated_tax = product.tax * quantity
    calculated_total = caluclated_subtotal + calculated_tax

    @order = Order.create(
      user_id: current_user.id,
      subtotal: caluclated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )

    if @order.valid?
      render :show
    else
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @order = current_user.orders.find_by(id: params["id"])
    render :show
  end

  def index
    if current_user
      @orders = current_user.orders
      render :index
    else
      render json: [], status: :unauthorized
    end
  end
end
