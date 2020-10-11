Rails.application.routes.draw do
  get 'non_library_pages/contact_us'
  get 'non_library_pages/suggest_resource'
  get 'non_library_pages/about_us'
  devise_for :users, controllers: {
    sessions: 'user/sessions'
    #registrations: 'user/registrations'
  }
  get 'items/new'
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root :to => "application#home"
  
end
