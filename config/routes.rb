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
  get "password/reset", to: "password_reset#new"
  post "password/reset", to: "password_reset#create"
  get "password/reset/edit", to: "password_reset#edit"
  patch "password/reset/edit", to: "password_reset#update"
  
  #Log out route
  delete "logout", to: "sessions#destroy"

  #Profile routes
  get "profile", to: "profiles#index"
  get "profile/edit/:id", to: "profiles#edit", as: :edit_profile
  patch "profile/edit/:id", to: "profiles#update", as: :update_profile

  get "project/new", to: "projects#new"

  # Defines the root path route ("/")
  root to: "main#index" 
end
