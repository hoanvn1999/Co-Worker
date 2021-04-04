class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space

  validate :start_date_cannot_be_in_the_past
  validate :start_date_cannot_be_later_than_end_date

  def start_date_cannot_be_in_the_past
    errors.add(:start_date, "can't be in the past") if
      start_date.present? && start_date < Time.zone.today
  end

  def start_date_cannot_be_later_than_end_date
    errors.add(:start_date, "can't be later than", :end_date) if
      start_date.present? && end_date.present? && start_date < end_date
  end
end
