class BankAccount < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy

  validates :name, presence: true

  before_save :set_color

  def balance
    transactions.sum(:amount)
  end

  private

  def set_color
    self.color = "##{SecureRandom.hex(3)}"
  end
end
