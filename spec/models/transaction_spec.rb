require 'rails_helper'

RSpec.describe Transaction, type: :model do
  context "db columns" do
    it { should have_db_column(:amount).of_type(:decimal).with_options(precision: 7, scale: 2) }
    it { should have_db_column(:created_at).of_type(:datetime) }
    it { should have_db_column(:updated_at).of_type(:datetime) }
  end

  describe 'validations' do
    it { should validate_presence_of(:amount) }
  end

  describe "associations" do
    it { should belong_to(:wallet) }
  end
end
