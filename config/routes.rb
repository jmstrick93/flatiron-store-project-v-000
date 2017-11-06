Rails.application.routes.draw do

  root 'store#index', as: 'store'

  resources :items, only: [:show, :index]
  resources :categories, only: [:show, :index]
  resources :users, only: [:show]
  resources :carts
  resources :line_items, only: [:create]
  resources :orders, only: [:show]

  post 'carts/:id/checkout', to: 'carts#checkout', as: 'checkout'
  get 'login', to: 'sessions#login', as: 'login'
  post 'login', to: 'sessions#create'
  get 'signup', to: 'sessions#signup', as: 'signup'

end
