class Schedule < ApplicationRecord
  acts_as_paranoid

  belongs_to :movie
  belongs_to :auditorium
  has_many :reservations
end
