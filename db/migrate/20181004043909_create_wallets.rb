class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|

      t.references :walletable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
