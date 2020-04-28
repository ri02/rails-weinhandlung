class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]

  def home
  end

  def index
    @super_categories = SuperCategory.includes(:categories)
    @product = Product.new
  end
end
