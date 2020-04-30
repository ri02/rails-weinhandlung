class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]


  def index
    @super_categories= SuperCategory.all
    if search_params[:super_category].present?
      @super_category = SuperCategory.find_by(name: search_params[:super_category])
      @categories = Category.joins(:super_category).where("super_categories.name = ?", search_params[:super_category])
      @products = Product.joins(category: :super_category]).where("super_categories.name = ?", search_params[:super_category])

   raise
    elsif search_params[:query].present?
      @products = Product.global_search(search_params[:query])
    else
      @category = Category.find_by(name: search_params[:category])
      @products = Product.joins(:category).where("categories.name = ?", search_params[:category])
    end

  end

private
  def search_params
    params.require(:products).permit(:category, :query, :super_category)
  end
end
