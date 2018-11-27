Rails.application.routes.draw do

	
   devise_for :users, controllers: {
        sessions: 'users/sessions'
      }


  get 'order/new'
  get 'order/create'
  get 'order/show'
  get 'order/index'

  root 'home#index'


  resources :orders, only: [:new, :create, :show, :index]
  get 'item/index'
  get 'item/show'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
