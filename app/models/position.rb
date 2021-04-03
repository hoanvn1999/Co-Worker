class Position < ApplicationRecord
  belongs_to :space
  has_many :bookings
  has_many :users, through: :bookings
end
