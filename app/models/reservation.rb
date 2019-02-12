class Reservation < ApplicationRecord
  acts_as_paranoid

  belongs_to :seat
  belongs_to :user
  belongs_to :schedule
end
