# == Schema Information
#
# Table name: menus
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Menu < ApplicationRecord
  has_many :menu_dishes, dependent: :destroy
  has_many :dishes, through: :menu_dishes
end
