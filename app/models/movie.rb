class Movie < ApplicationRecord
  acts_as_paranoid
  serialize :genre, Array

  has_many :schedules
  has_many :auditoriums, through: :schedules
  has_many :cinemas, through: :auditoriums
end
