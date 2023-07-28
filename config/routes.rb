Rails.application.routes.draw do
  


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  root "home#index"

  mount API::Base, at: "/"

  resources :tickets, only: [:index, :show]
end
