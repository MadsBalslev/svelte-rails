
class TransactionFormatter

  def initialize(transactions)
    @transactions = transactions
  end

  def for_chart
    @transactions.group_by(&:date).map do |date, transactions|
      {
        x: date.to_date.to_s,
        y: transactions.sum(&:amount).round(2)
      }
    end
  end
end
