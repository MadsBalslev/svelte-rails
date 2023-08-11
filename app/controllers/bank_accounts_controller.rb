class BankAccountsController < ApplicationController

  def index
    render inertia: 'BankAccounts/Index'
  end
end
