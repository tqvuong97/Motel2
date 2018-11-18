class Room < ApplicationRecord
  belongs_to :area
  has_many :guests
  has_many :devices
end
