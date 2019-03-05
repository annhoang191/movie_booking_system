require "rails_helper"

RSpec.describe Cinema, type: :model do
  let!(:cinema) {FactoryBot.create :cinema}

  describe "associations" do
    it {should have_many :auditoria}
  end

  describe "have database columns" do
    it {expect(:cinema).to have_db_column(:name).of_type(:string)}
    it {expect(:cinema).to have_db_column(:address).of_type(:string)}
  end
end
