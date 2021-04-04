class Space < ApplicationRecord
  belongs_to :user
  has_many :positions
  has_many :bookings
  has_many :users, through: :bookings

  has_one_attached :space_image
  has_one_attached :map

  name = lambda do |text|
    if text.present?
      where("name LIKE ?", "%#{text}%")
    else
      all
    end
  end
  scope :find_name, name

  address = lambda do |text|
    if text.present?
      where("address LIKE ?", "%#{text}%")
    else
      all
    end
  end
  scope :find_address, address
end
