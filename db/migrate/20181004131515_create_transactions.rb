class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :wallet_id
      t.string :type, null: false
      t.decimal :amount, precision: 7, scale: 2
      t.timestamps
    end
  end
end
