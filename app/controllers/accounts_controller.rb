class AccountsController < ApplicationController
  def login
  end

  def signup
    @account = Account.new # 或者从数据库中获取相应的Account对象
  end

  def create
    @account = Account.new(account_params)
    puts "account:#{@account}"
  end

    private
      def account_params
        params.require(:account).permit(:name, :email)
      end







end
