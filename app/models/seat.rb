class Seat < ApplicationRecord
  acts_as_paranoid

  belongs_to :auditorium
  has_many :reservations
end
