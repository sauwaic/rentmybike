class Accessory < ApplicationRecord
  has_many :bike_accessories
  has_many :bikes, through: :bike_accessories

  validates :type, presence: true, uniqueness: true
end
