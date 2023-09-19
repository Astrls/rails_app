Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "about", to: "about#index", as: :about
  get "signup", to: "registration#new"
  # post "signup", to: "registration#new", as: :signup

  # Defines the root path route ("/")
  root to: "main#index" 
end
