require "rails_helper"

RSpec.describe Seat, type: :model do
  let!(:seat) {FactoryBot.create :seat}

  describe "have associations" do
    it {should belong_to :auditorium}
    it {should have_many :reservations}
  end

  describe "have database columns" do
    it {expect(:seat)).to have_db_column(:row).of_type(:string)}
    it {expect(:seat)).to have_db_column(:number).of_type(:integer)}
    it {expect(:seat).to have_db_index(:auditorium_id).unique(:true)}
  end
end
