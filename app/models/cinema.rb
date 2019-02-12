class Cinema < ApplicationRecord
  acts_as_paranoid

  has_many :auditoria
end
