class PagesController < ApplicationController
  def home
    @categories = Category.all
    @dishes = Dish.all
  end
  def Menu
    @menu = Menu.all
  end

  def dish
    @comments = @dish.comments
  end

  def review; end
  def order 
  	@order = Order.find(params[:id])
  	@user = User.find(params[:user_id])
  end
end
