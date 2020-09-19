Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
  
  unauthenticated do 
    as :user do
      root :to => "applications#sign_up"
    end
  end 
  
  root :to => "application#home"
  
end
