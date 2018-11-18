class Area < ApplicationRecord
    belongs_to :pricelists
    has_many :rooms
end
