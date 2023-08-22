class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :description, null: false
      t.float :amount, null: false
      t.datetime :date
      t.datetime :bank_date
      t.belongs_to :bank_account, null: false, foreign_key: true
      t.integer :transaction_type, null: false

      t.timestamps
    end
  end
end
