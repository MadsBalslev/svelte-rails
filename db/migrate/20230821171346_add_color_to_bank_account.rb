class AddColorToBankAccount < ActiveRecord::Migration[7.0]
  def change
    add_column :bank_accounts, :color, :string
  end
end
