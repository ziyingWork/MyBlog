class AccountsController < ApplicationController
  def login
  end

  def signup
    @account = Account.new # 或者从数据库中获取相应的Account对象
  end

  def create
    @account = Account.new(account_params)
    # 调试代码不要提交到主分支
    puts "account:#{@account}"
  end

  # 代码风格可以试试 gem: rubocop
    private
      def account_params
        params.require(:account).permit(:name, :email)
      end







end
