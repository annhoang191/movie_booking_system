class Auditorium < ApplicationRecord
  acts_as_paranoid

  belongs_to :cinema
  has_many :schedules
  has_many :seats
  scope :by_cinema, ->(cinema_id){where cinema_id: cinema_id}
end
