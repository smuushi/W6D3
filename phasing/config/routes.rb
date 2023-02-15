Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :users

  get "users/", to: "users#index", as: "main"

  post "users/", to: "users#create", as: "manifest_user"

  get "users/new", to: "users#new", as: "new_user"

  get "users/:id", to: "users#find", as: "user"

  patch "users/:id", to: "users#update"

  delete "users/:id", to: "users#destroy", as: "rip"
end
