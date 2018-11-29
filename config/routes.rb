Rails.application.routes.draw do

	
  devise_for :users

  
  get '/users/:id', to: 'users#show', as: 'user'


  root 'home#index'


  resources :order, only: [:new, :show, :index]
  post 'order/create', to: 'order#create', as: 'order_creation'

  
  resources :item 

  get '/category/:id', to: "category#show", as: 'show_category'
   
  post 'cart_item', to: "cart_item#create"
  delete 'cart_item.:id', to: "cart_item#destroy"
  post 'cart_item/:id/add' => "cart_item#add_quantity", as: "cart_item_add"
  post 'cart_item/:id/reduce' => "cart_item#reduce_quantity", as: "cart_item_reduce"



resources :adminpage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
