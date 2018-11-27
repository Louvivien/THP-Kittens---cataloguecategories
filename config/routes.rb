Rails.application.routes.draw do
  get 'item/index'
  get 'item/show'
  devise_for :users
  root 'home#index'
  get 'item/index'
  get 'item/show'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
