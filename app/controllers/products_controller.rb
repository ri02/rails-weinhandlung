class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if search_params[:query].present?
      @products = Product.global_search(search_params[:query])
    else
      @products = Product.joins(:category).where("categories.name = ?", search_params[:category])
    end

  end

private
  def search_params
    params.require(:products).permit(:category, :query)
  end
end
