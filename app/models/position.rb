class Position < ApplicationRecord
  belongs_to :space

  enum status: {free: 0, booked: 1}
end
