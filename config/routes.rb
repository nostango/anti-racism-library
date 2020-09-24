Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'user/sessions'
    #registrations: 'user/registrations'
  }
  get 'items/new'
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root :to => "application#home"
  
end
