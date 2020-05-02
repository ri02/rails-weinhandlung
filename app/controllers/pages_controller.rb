class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]

  def home
    @super_categories = SuperCategory.all

  end

  def index
    @super_categories = SuperCategory.includes(:categories)
    @product = Product.new
  end
end
