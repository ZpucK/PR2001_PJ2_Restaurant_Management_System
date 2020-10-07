# == Schema Information
#
# Table name: menu_dishes
#
#  id         :integer          not null, primary key
#  menu_id    :integer          not null
#  dish_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class MenuDish < ApplicationRecord
  belongs_to :menu
  belongs_to :dish
end
