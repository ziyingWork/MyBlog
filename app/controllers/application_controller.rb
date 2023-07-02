class ApplicationController < ActionController::Base

    helper_method :check_login

    def check_login
        if @current_user 
            @current_user 
          else 
            if session[:account_id] 
              @current_user = Account.find_by(id: session[:account_id]) 
            else 
              @current_user = nil 
            end 
            @current_user 
          end
    end

    def login_validity
      unless session[:account_id]
        redirect_to accounts_login_path, alert: "You don't have permission to access this page."
      end
    end
    
    

end
