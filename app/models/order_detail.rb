# == Schema Information
#
# Table name: order_details
#
#  id         :integer          not null, primary key
#  book_id    :integer          not null
#  dish_id    :integer          not null
#  cost       :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :dish
end
