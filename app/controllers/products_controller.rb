class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]


  def index
    @super_categories= SuperCategory.includes([:categories])
    if search_params[:super_category].present?
      @categories = Category.joins(:super_category).where("super_categories.name = ?", search_params[:super_category]).includes(:headers, :products)
    elsif search_params[:query].present?
      @search = 1 #until pg:multisearchable inculded
      @products = Product.global_search(search_params[:query])

    else
      @categories = [Category.find_by(name: search_params[:category])]
    end
  end

private
  def search_params
    params.require(:products).permit(:category, :query, :super_category)
  end
end
