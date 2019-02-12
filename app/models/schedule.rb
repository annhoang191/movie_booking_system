class Schedule < ApplicationRecord
  belongs_to :movie
  belongs_to :auditorium
end
