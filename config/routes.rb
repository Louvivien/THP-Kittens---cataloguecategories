Rails.application.routes.draw do

	
  devise_for :users

  
  get '/users/:id', to: 'users#show', as: 'user'


  # get 'order/new'
  # get 'order/create'
  # get 'order/show'
  # get 'order/index'

  root 'home#index'


  resources :orders, only: [:new, :show, :index]
  post 'orders(.:format)', to: 'orders#create', as: 'order_creation'

  

  resources :item
  post 'cart_item', to: "cart_item#create"
  delete 'cart_item.:id', to: "cart_item#destroy"
  post 'cart_item/:id/add' => "cart_item#add_quantity", as: "cart_item_add"
  post 'cart_item/:id/reduce' => "cart_item#reduce_quantity", as: "cart_item_reduce"



resources :adminpage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
