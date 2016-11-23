class VideosController < ApplicationController
  def show
    @video = Video.find(params[:id])
    @products = Product.where(:video => @video)
  end
end
