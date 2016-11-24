class Bike < ApplicationRecord

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  has_attachment :photo

  belongs_to :user
  has_many :bike_accessories, dependent: :destroy
  has_many :accessories, through: :bike_accessories

  has_many :bookings, dependent: :destroy

  validates :size, inclusion: { in: %w(small medium large) }
  validates :gender, inclusion: { in: %w(male female) }
  validates :category, inclusion: { in: %w(racing mountain city fixie) }
  validates :gears, inclusion: { in: [0, 3, 7, 14, 21] }
  validates :condition, inclusion: { in: %w(excellent good fair) }
  validates :price, presence: true

end
