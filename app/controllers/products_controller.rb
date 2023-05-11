class ProductsController < ApplicationController
  def all_product
    @product = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.first
    puts "The id is: #{params["id"]}"
    render template: "products/show"
  end

  # def second_product
  #   @product = Product.second
  #   render template: "products/show"
  # end

  # def third_product
  #   @product = Product.third
  #   render template: "products/show"
  end
end
