class CreateBankAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_accounts do |t|
      t.string :name, null: false
      t.float :balance, null: false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
