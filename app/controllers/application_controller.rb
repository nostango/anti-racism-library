class ApplicationController < ActionController::Base
    
    def sign_in(email, password)
       # redirect_to "/home"
    end
    
    def sign_up(email, password, password_confirm)
       # redirect_to "/home"
    end 
    
    
    def home
    end
    
    def layout_by_resource 
        if user_signed_in?
            "home"
        else 
            "sign_in"
        end 
    end 
    
end
