require 'active_support/concern'
module Entity # TODO change name to something that make more sense
  extend ActiveSupport::Concern

  included do
    validates :name, presence: true, uniqueness: true

    has_one :wallet, as: :walletable, dependent: :destroy
    has_many :transactions, through: :wallet
    after_create :create_wallet
  end

  def withdrawal(wallet, amount)
    wallet.debits.create(recipient_wallet_id: wallet.id, amount: amount)
  end

  def deposit(wallet, amount)
    wallet.credits.create(sender_wallet_id: wallet.id, amount: amount)
  end
end
