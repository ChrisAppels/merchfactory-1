Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :products only: [:index, :show]

  resources :orders only: [:create, :show, :checkout, :payment, :confirmation, :index] do
    resources :order_items only: [:create ]
  end
  resources :users only: [:update, :edit]

  resources :product_designs only: [:index]

end
