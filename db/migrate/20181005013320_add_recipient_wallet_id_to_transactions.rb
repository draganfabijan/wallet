class AddRecipientWalletIdToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :recipient_wallet_id, :integer
  end
end
