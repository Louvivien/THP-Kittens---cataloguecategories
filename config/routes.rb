Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'product/index'
  get 'product/show'
  get 'product/checkout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
