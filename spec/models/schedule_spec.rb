require "rails_helper"

RSpec.describe Schedule, type: :model do
  let!(:schedule) {FactoryBot.create :schedule}

  describe "have associations" do
    it {should belong_to :movie}
    it {should belong_to :auditorium}
    it {should have_many :reservations}
  end

  describe "have database columns" do
    it {expect(:schedule)).to have_db_column(:start_time).of_type(:datetime)}
    it {expect(:schedule)).to have_db_column(:end_time).of_type(:datetime)}
    it {expect(:schedule).to have_db_index(:auditorium_id).unique(:true)}
    it {expect(:schedule).to have_db_index(:movie_id).unique(:true)}
  end
end
