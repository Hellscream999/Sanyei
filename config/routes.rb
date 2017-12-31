Rails.application.routes.draw do
  resources :customers
  resources :shops
  resources :handymen
  resources :admins
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  root 'main#index'
end
