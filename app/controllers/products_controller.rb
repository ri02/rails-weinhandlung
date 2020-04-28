class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if search_params[:query].present?
      sql_query = "products.name ILIKE :query \
       OR categories.name ILIKE :query\
       "
      @products = Product.joins(:category).where(sql_query, query: "%#{search_params[:query]}%")
    else
      @category_id = Category.find_by_name(search_params[:category])
      @products = Product.where(category_id: @category_id)
    end

  end

private
  def search_params
    params.require(:products).permit(:category, :query)
  end
end
