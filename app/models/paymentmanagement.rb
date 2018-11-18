class Paymentmanagement < ApplicationRecord
  belongs_to :guest
  belongs_to :service
  belongs_to :room
end
