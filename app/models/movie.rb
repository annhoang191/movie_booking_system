class Movie < ApplicationRecord
  acts_as_paranoid
  serialize :genre, Array

  has_many :schedules
end
