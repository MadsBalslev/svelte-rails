class AddProviderToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :provider, :string, null: false, default: "email"
    add_column :users, :uid, :string, null: false, default: ""
    add_column :users, :full_name, :text
    add_index :users, [:uid, :provider], unique: true
  end
end
