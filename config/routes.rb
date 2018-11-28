Rails.application.routes.draw do

	
  get 'adminpage/new'
  get 'adminpage/index'
   devise_for :users, controllers: {
        sessions: 'users/sessions'
      }


  get 'order/new'
  get 'order/create'
  get 'order/show'
  get 'order/index'

  root 'home#index'


  resources :orders, only: [:new, :show, :index]
  post 'orders(.:format)', to: 'orders#create', as: 'order_creation'

  
  resources :item

  #get 'item/index'
  #get 'item/:id' => "items#show"
 
  post 'cart_items' => "cart_items#create"
  get 'cart_items/:id' => "cart_items#create"


resources :adminpage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
