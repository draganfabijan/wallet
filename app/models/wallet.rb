class Wallet < ApplicationRecord
  belongs_to :walletable, polymorphic: true

  has_many :transactions, dependent: :destroy
  has_many :debits
  has_many :credits

  def update_balance!
    new_balance = calculate_new_balance
    update(balance: new_balance)
  end

  private

  def calculate_new_balance
    credits.sum(:amount) - debits.sum(:amount)
  end
end
