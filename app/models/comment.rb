class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :dish
  paginates_per 10
end
