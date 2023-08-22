class BankAccountsController < ApplicationController

  def index
    bank_accounts = policy_scope(BankAccount).all
    authorize bank_accounts
    render inertia: 'BankAccounts/Index', props: {
      accounts: bank_accounts
    }
  end

  def show
    bank_account = policy_scope(BankAccount).find(params[:id])
    transactions = bank_account.transactions.by_date
    authorize bank_account
    render inertia: 'BankAccounts/Show', props: {
      account: bank_account,
      transactions: transactions
    }
  end
end
