Rails.application.routes.draw do

  get 'orders/checkout'

  get 'orders/payment'

  get 'orders/confirmation'

  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show]

  resources :orders, only: [:create, :show, :index] do
    resources :order_items, only: [:create ]
  end
  resources :users, only: [:update, :edit]

  resources :product_designs, only: [:index]

end
