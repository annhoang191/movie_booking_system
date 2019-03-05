require "rails_helper"

RSpec.describe User, type: :model do
  let!(:user) {FactoryBot.create :user}

  describe "have validations" do
    it {should validate_presence_of(:name)}
    it {should validate_length_of(:name).is_at_most(Settings.models.user.name.max_length)}
    it {should validate_length_of(:name).is_at_least(Settings.models.user.name.min_length)}
    it {should validate_presence_of(:email)}
    it {should validate_uniqueness_of(:email).ignoring_case_sensitivity}
    it {should validate_length_of(:phone_number).is_at_most(Settings.models.user.phone_number.max_length)}
    it {should validate_length_of(:phone_number).is_at_least(Settings.models.user.phone_number.min_length)}
  end

  describe "have associations" do
    it {should have_many :reservations}
  end

  describe "have database columns" do
    it {expect(:user).to have_db_column(:name).of_type(:string)}
    it {expect(:user).to have_db_column(:email).of_type(:string).with_options(null: false)}
    it {expect(:user).to have_db_column(:phone_number).of_type(:string)}
    it {expect(:user).to have_db_column(:password).of_type(:string)}
    it {expect(:user).to have_db_column(:password_confirmation).of_type(:string)}
  end
end
