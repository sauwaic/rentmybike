
class Booking < ApplicationRecord
  belongs_to :bike
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user_id, presence: true
  validates :bike_id, presence: true
end
