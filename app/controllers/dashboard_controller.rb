class DashboardController < ApplicationController
  def index
    @accounts = policy_scope(BankAccount).all
    @withdrawals = policy_scope(Transaction).withdrawals.this_month
    authorize @accounts

    render inertia: 'Dashboard/Index', props: {
      accounts: @accounts,
      withdrawals: TransactionFormatter.new(@withdrawals).for_chart
    }
  end
end
