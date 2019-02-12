class Auditorium < ApplicationRecord
  acts_as_paranoid

  belongs_to :cinema
  has_many :schedules
  has_many :seats
end
