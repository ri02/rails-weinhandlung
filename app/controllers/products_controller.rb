class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :recommended]


  def index
    @cart = @current_cart
    @super_categories= SuperCategory.includes([:categories])
    @line_items = LineItem.where('cart_id = ?', @cart.id)

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
    @super_categories= SuperCategory.includes([:categories])
    @recommended_products = Product.where(premium: true)
    @recommended_categories = Category.joins(:products).where("products.premium = ?", true)

  end


private
  def search_params
    params.require(:products).permit(:category, :query, :super_category)
  end
end
