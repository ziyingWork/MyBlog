class AccountsController < ApplicationController

  def login
    render "accounts/login"
  end

  def signup
    @account = Account.new
  end

  def create
    @account = Account.new(signup_params)
    @account.status = "0" # 用户状态默认为0（激活状态）
    if @account.save
      redirect_to accounts_login_path
    else
      render :signup, status: 422
    end  
  end

  def login_method
    email = params[:email].strip
    pwd = params[:password].strip
    if email.blank? && pwd.blank?
      flash[:error] = "Please enter your email and password."
      render :login , status: 422
    elsif email.blank?
      flash[:error] = "Please enter your email."
      render :login , status: 422
    elsif pwd.blank?
      flash[:error] = "Please enter your password."
      render :login , status: 422
    else
      user = Account.find_by(email: email)
      if user.nil?
         flash[:error] = "User does not exist."
         render :login , status: 404
      else
        if user.authenticate(pwd)
          puts "密码正确"
          session[:account_id] = user.id
          redirect_to articles_path
        else
          flash[:error] = "Incorrect password."
          render :login , status: 401
        end
      end   
    end
  end

  def logout_method
    session.delete(:account_id)
    redirect_to accounts_login_path
  end


    private
      def signup_params
        params.require(:account).permit(:name, :email, :password, :password_confirmation , :role)
      end

      




end
