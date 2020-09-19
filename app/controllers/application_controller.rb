class ApplicationController < ActionController::Base
    
    def sign_in
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
