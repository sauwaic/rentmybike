class BikeAccessory < ApplicationRecord
  belongs_to :bike
  belongs_to :accessory
end
