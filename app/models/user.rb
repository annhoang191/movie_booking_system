class User < ApplicationRecord
  acts_as_paranoid
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable, :confirmable
  has_many :reservations

  validates :name, presence: true, length: {maximum: Settings.models.user.name.max_length,
    minimum: Settings.models.user.name.min_length}
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :phone_number, length: {maximum: Settings.models.user.phone_number.max_length}
end
