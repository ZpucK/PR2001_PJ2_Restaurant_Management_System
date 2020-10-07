class CategoriesController < ApplicationController
  def index
    @categories = Category.paginate(page: params[:page], per_page: 10)
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end
end
