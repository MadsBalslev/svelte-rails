require 'faker'

# Destroy all existing data.
User.destroy_all
BankAccount.destroy_all
Transaction.destroy_all

# Create a main sample user.
user = User.create!(
  first_name: 'Test',
  last_name: 'User',
  email: 'test@user.com',
  password: 'password',
  password_confirmation: 'password'
)

5.times do |i|
  user.bank_accounts.create!(
    name: "Konto #{i + 1}",
    balance: Faker::Number.between(from: -100.0, to: 2000.0).round(2)
  )
end

user.bank_accounts.each do |account|
  150.times do
    account.transactions.create!(
      amount: Faker::Number.decimal(l_digits: 2),
      description: Faker::Lorem.sentence(word_count: 3),
      date: Faker::Date.between(from: 1.year.ago, to: Date.today),
      transaction_type: Transaction.transaction_types.keys.sample
    )
  end
end
