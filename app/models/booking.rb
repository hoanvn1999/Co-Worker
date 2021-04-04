class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space

  validate :start_date_cannot_be_in_the_past
  validate :start_date_cannot_be_later_than_end_date

  def start_date_cannot_be_in_the_past
    errors.add(:start_time, "can't be in the past") if
      start_time.present? && start_time < Time.zone.today
  end

  def start_date_cannot_be_later_than_end_date
    errors.add(:start_time, "can't be later") if
      start_time.present? && end_time.present? && start_time > end_time
  end
end
