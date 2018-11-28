Rails.application.routes.draw do

	
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

  
  resources :item, only: [:index, :show]
 
  post 'cart_items' => "cart_items#create"
  get 'cart_items/:id' => "cart_items#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
