class OrdersController < ApplicationController

  resources :orders, only: [:show, :create]
end
