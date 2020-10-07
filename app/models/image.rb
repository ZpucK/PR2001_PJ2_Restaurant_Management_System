class Image < ApplicationRecord
  belongs_to :dish
  mount_uploader :link, ImageUploader
  validates :link, presence: true
end
