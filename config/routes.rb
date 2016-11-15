Rails.application.routes.draw do

  get 'product_designs/index'

  get 'order_items/create'

  get 'users/update'

  get 'users/edit'

  get 'orders/create'

  get 'orders/show'

  get 'orders/checkout'

  get 'orders/payment'

  get 'orders/confirmation'

  get 'orders/index'

  get 'products/index'

  get 'products/show'

  get 'pages/home'

  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show]

  resources :orders, only: [:create, :show, :checkout, :payment, :confirmation, :index] do
    resources :order_items, only: [:create ]
  end
  resources :users, only: [:update, :edit]

  resources :product_designs, only: [:index]

end
