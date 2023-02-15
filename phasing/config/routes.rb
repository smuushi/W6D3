Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :users

  get 'users/', to: 'users#index', as: 'main'

  post 'users/', to: 'users#create', as: 'manifest_user'

  get 'users/new', to: 'user#new', as: 'new_user'

  



end
