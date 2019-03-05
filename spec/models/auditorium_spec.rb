require "rails_helper"

RSpec.describe Auditorium, type: :model do
  let!(:auditorium) {FactoryBot.create :auditorium}

  describe "have associations" do
    it {should belong_to :cinema}
    it {should have_many :seats}
    it {should have_many :schedules}
  end

  describe "have database columns" do
    it {expect(:auditorium)).to have_db_column(:name).of_type(:string)}
    it {expect(:auditorium)).to have_db_column(:seat_capacity).of_type(:integer)}
    it {expect(:auditorium).to have_db_index(:cinema_id).unique(:true)}
  end
end
