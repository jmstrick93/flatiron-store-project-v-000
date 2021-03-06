Rails.application.routes.draw do

  devise_for :users
  root 'store#index', as: 'store'

  resources :items, only: [:show, :index]
  resources :categories, only: [:show, :index]
  resources :users, only: [:show]
  resources :carts
  resources :line_items, only: [:create]
  resources :orders, only: [:show]

  post 'carts/:id/checkout', to: 'carts#checkout', as: 'checkout'
  get 'login', to: 'sessions#login', as: 'login'
  get 'cartview', to: 'carts#assign_cart', as: 'assign_cart'
  post 'items/:id/add', to: 'items#add_to_cart', as: 'add_to_cart'

end
