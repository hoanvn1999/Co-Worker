class Space < ApplicationRecord
  belongs_to :user
  has_many :positions

  has_many_attached :space_images
end
