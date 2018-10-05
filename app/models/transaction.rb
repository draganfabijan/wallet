class Transaction < ApplicationRecord

  validates :amount, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 10000 }
  belongs_to :wallet
  after_create :update_wallet_balance

  def update_wallet_balance
    wallet.update_balance!
  end

  def initial_amount?
    recipient_wallet_id.nil? && sender_wallet_id.nil?
  end
end
