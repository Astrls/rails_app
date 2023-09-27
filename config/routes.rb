Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "about", to: "about#index", as: :about

  #Sign up routes
  get "signup", to: "registration#new"
  post "signup", to: "registration#create"

  #Log in routes
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"

  #Password update routes
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update", as: :update_password
  
  #Log out route
  delete "logout", to: "sessions#destroy"

  #Profile routes
  get "profile", to: "profiles#index"

  # Defines the root path route ("/")
  root to: "main#index" 
end
