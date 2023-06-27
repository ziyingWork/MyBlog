class AccountsController < ApplicationController
  def login
  end

  def signup
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
  end

    private
      def account_params
        params.require(:account).permit(:name, :email)
      end







end
