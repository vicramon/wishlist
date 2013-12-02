Wishlist::Application.routes.draw do
  root to: 'home#index'
  resources :sessions, only: [:create, :destroy]
  resources :wishlists
  resources :users, only: [:create, :update]

  get '/sign_out', to: 'sessions#destroy', as: 'sign_out'
  get '/sign_in', to: 'home#index', as: 'sign_in'
end
