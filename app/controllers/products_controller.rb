class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    if params["category"]
      category = Category.find_by(name: params["category"])
      @products = category.products
    end
    render :index
  end

  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def create
    if current_user && current_user.admin
      @product = Product.create(
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

  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      description: params["description"] || @product.description,
    )

    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy

    render json: { message: "File successfully destroyed" }
  end
end
