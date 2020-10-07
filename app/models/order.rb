# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Order < ApplicationRecord
  belongs_to :user
  belongs_to :table
  has_many :order_details, dependent: :destroy
  has_many :dishes, through: :order_details
  accepts_nested_attributes_for :order_details
end
