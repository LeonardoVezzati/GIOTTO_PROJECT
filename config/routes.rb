Rails.application.routes.draw do
  get 'furnitures/index'
  get 'furnitures/show'
  devise_for :users
  root to: 'pages#home'

  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :furnitures, only: [:index, :show]
  resources :bookings
  resources :packages
  

end
