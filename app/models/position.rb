class Position < ApplicationRecord
  belongs_to :space
  has_many :bookings
  has_many :users, through: :bookings

  enum status: {free: 0, booked: 1}
end
