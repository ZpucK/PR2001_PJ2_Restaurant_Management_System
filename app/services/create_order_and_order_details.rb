class CreateOrderAndOrderDetails
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def perform
    ActiveRecord::Base.transaction do
      order = Order.create!(name: params[:order][:name], table_id: params[:table_id])
      total_price = 0
      params[:dishes].each do |dish|
        d = Dish.find dish[:dish_id]
        total_price += price * quantity
        order.order_details.create!(dish_id: dish.id, quantity: dish[:quantity], price: d.money, cost: price * quantity)
      end
      order.update total_price: total_price
    end
    true
  rescue StandardError
    false
  end
end
