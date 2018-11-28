Rails.application.routes.draw do

	
 
   devise_for :users


  # get 'order/new'
  # get 'order/create'
  # get 'order/show'
  # get 'order/index'

  root 'home#index'


  resources :order, only: [:new, :show, :index]
  post 'orders(.:format)', to: 'order#create', as: 'order_creation'

  

  resources :item
  post 'cart_item', to: "cart_item#create"
  delete 'cart_item.:id', to: "cart_item#destroy"




resources :adminpage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
