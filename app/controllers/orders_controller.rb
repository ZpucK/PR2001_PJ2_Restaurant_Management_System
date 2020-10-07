class OrdersController < ApplicationController
  # before_action :set_order, only: [ :show ]
  # before_action :set_user
  

  def index
    @orders = Order.all
  end

  def show; end

  def new
    @order = Order.new
  end

  # input:
  # params = {
  #   order: {name: "order 1"},
  #   table_id: 1,
  #   dishes: [
  #     { dish_id: 1, quantity: 2 },
  #     { dish_id: 2, quantity: 3 }
  #   ]
  # }

  def create
    if CreateOrderAndOrderDetails.new(params).perform
      flash[:success] = 'Create Order'
      redirect_to orders_path
    else
      flash[:danger] = 'Register failed'
      render 'new'
    end
  end

  def edit; end

  def update
    if @order.update(order_params)
      flash[:success] = 'Order was successfully updated.'
      redirect_to orders_url
    else
      flash[:danger] = 'Order was not successfully updated.'
      render 'edit'
    end
  end

  def destroy
    @order.destroy
    flash[:success] = 'Menu was successfully destroyed.'
    redirect_to orders_url
  end

  private

  # def set_order
  #   @order = Order.find(params[:id])
  # end

  # def set_user
  #   @user = User.find(params[:user_id])
  # end

  def order_params
    params.require(:order).permit :name
  end
end
