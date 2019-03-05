require "rails_helper"

RSpec.describe Reservation, type: :model do
  let!(:seat) {FactoryBot.create :seat}

  describe "have associations" do
    it {should belong_to :seat}
    it {should belong_to :user}
    it {should belong_to :schedule}
  end

  describe "have database columns" do
    it {expect(:reservation).to have_db_index(:seat_id).unique(:true)}
    it {expect(:reservation).to have_db_index(:user_id).unique(:true)}
    it {expect(:reservation).to have_db_index(:schedule_id).unique(:true)}
  end
end
