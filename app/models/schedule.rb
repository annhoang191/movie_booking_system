class Schedule < ApplicationRecord
  acts_as_paranoid

  belongs_to :movie
  belongs_to :auditorium
  has_many :reservations

  scope :by_auditorium, ->(auditorium_id){where auditorium_id: auditorium_id}
  scope :by_auditorium_and_movie, ->(auditorium_id, movie_id){where auditorium_id: auditorium_id,
    movie_id: movie_id}
end
