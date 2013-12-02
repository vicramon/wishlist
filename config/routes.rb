Wishlist::Application.routes.draw do
  root to: 'home#index'
  resources :sessions, only: [:create, :destroy]
  resources :wishlists, only: [:index, :create, :update, :show]
  resources :comments, only: :create
  resources :users, only: :create

  get '/sign_out', to: 'sessions#destroy', as: 'sign_out'
  get '/sign_in', to: 'home#index', as: 'sign_in'
end
