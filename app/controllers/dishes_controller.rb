class DishesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @dishes = @category.dishes
  end

  def show
    @dish = Dish.find params[:id]
    @comments = @dish.comments.page(params[:page]).per(5) 
    @comment = current_user.comments.build(dish_id: params[:id]) if signed_in?
  end
end
