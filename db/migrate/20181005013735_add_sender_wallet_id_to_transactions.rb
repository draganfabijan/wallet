class AddSenderWalletIdToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :sender_wallet_id, :integer
  end
end
