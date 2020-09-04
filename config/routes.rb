Rails.application.routes.draw do
  get 'furnitures/index'
  get 'furnitures/show'
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :furnitures, only: [:index, :show]
  resources :bookings
  resources :invoices
  resources :packages, only: [:index, :create, :destroy, :new, :update] do
    member do
      patch :item_increase
      patch :item_decrease
    end
  end
  resources :teams do
    collection do
      get "team_packages", to: "teams#packages"
    end
  end

end
