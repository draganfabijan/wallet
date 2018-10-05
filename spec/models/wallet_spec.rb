require 'rails_helper'

RSpec.describe Wallet, type: :model do
  context "db columns" do
    it { should have_db_column(:balance).of_type(:decimal).with_options(precision: 9, scale: 2) }
    it { should have_db_column(:created_at).of_type(:datetime) }
    it { should have_db_column(:updated_at).of_type(:datetime) }
  end

  describe "associations" do
    it { should belong_to(:walletable) }
    it { should have_many(:transactions).dependent(:destroy) }
    it { should have_many(:credits) }
    it { should have_many(:debits) }
  end
  describe 'db index' do
    it { should have_db_index([:walletable_type, :walletable_id]) }
  end
end
