Rails.application.routes.draw do

	
 
   devise_for :users


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



  #get 'item/index'
  #get 'item/:id' => "items#show"
 
  post 'cart_items' => "cart_items#create"
  get 'cart_items/:id' => "cart_items#create"
  post 'items', to: 'item#new'



resources :adminpage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
