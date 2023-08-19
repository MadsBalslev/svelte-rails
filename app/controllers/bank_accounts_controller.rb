class BankAccountsController < ApplicationController

  def index
    bank_accounts = policy_scope(BankAccount).all
    render inertia: 'BankAccounts/Index', props: {
      accounts: bank_accounts
    }
  end
end
