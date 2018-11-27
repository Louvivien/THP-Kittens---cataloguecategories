Rails.application.routes.draw do
  get 'order/new'
  get 'order/create'
  get 'order/show'
  get 'order/index'
  devise_for :users
  root 'home#index'
  get 'product/index'
  get 'product/show'
  get 'product/checkout'

  resources :orders, only: [:new, :create, :show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
