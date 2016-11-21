class Bike < ApplicationRecord
  belongs_to :user
  has_many :bike_accessories, dependent: :destroy
  has_many :accessories, through: :bike_accessories

  has_many :bookings, dependent: :destroy

  validates :size, inclusion: { in: %w(small medium large) }
  validates :gender, inclusion: { in: %w(male female) }
  validates :type, inclusion: { in: %w(racing mountain city fixie) }
  validates :gears, inclusion: { in: %w(0 3 7 14 21) }
  validates :picture_url, presence: true
  validates :condition, inclusion: { in: %w(excellent good fair) }
  validates :price, presence: true

end
