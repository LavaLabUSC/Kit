class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @tags = @product.video.tags
  end
end
