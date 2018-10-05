require 'rails_helper'

RSpec.describe Team, type: :model do
  context "db columns" do
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:created_at).of_type(:datetime) }
    it { should have_db_column(:updated_at).of_type(:datetime) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe "associations" do
    it { should have_one(:wallet) }
    it { should have_many(:transactions).through(:wallet) }
  end

  describe "#create_wallet" do
    team = Team.create!(name: "Raiz")

    it "returns wallet object" do
      expect(team.wallet).to be_instance_of(Wallet)
    end
  end
end
