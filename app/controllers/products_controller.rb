class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]


  def index
    @super_categories= SuperCategory.includes([:categories])
    if search_params[:super_category].present?
      @category_overview = Category.joins(:super_category).where("super_categories.name = ?", search_params[:super_category])

    elsif search_params[:query].present?
      @search = 1 #until pg:multisearchable inculded
      @products = Product.global_search(search_params[:query])
      @query = search_params[:query]

    else
      @category = Category.find_by(name: search_params[:category])

    end
  end

  def recommended
    @recommended_product = Product.where(premium: true)
  end


private
  def search_params
    params.require(:products).permit(:category, :query, :super_category)
  end
end
