class AddBalanceToWallets < ActiveRecord::Migration[5.2]
  def change
    add_column :wallets, :balance, :decimal, precision: 9, scale: 2
  end
end
