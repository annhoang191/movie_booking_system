class Reservation < ApplicationRecord
  belongs_to :seat
  belongs_to :user
  belongs_to :schedule
end
