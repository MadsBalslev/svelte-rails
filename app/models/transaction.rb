class Transaction < ApplicationRecord
  belongs_to :bank_account

  validates :amount, presence: true
  validates :transaction_type, presence: true

  enum transaction_type: { deposit: 0, withdrawal: 1, transfer: 2 }

  scope :by_date, -> { order(date: :desc) }
  scope :deposits, -> { where(transaction_type: :deposit) }
  scope :withdrawals, -> { where(transaction_type: :withdrawal) }
  scope :transfers, -> { where(transaction_type: :transfer) }
end
