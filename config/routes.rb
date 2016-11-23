Rails.application.routes.draw do

  ActiveAdmin.routes(self)

  get '/orders/checkout'

  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show]

  resources :orders, only: [:create, :show, :index, :chekout] do
    resources :payments, only: [:new, :create]
  end

  resources :shopping_carts do [:create, :show, :index]
    resources :order_items, only: [:create ]
  end
  resources :categories, only: [:show] do
    resources :products, only: [:index, :show]
  end

  resources :users, only: [:update, :edit]

  resources :product_designs, only: [:index]

end
