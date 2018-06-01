Rails.application.routes.draw do
  devise_for :users
  resources :customers
  resources :shops
  resources :handymen
  resources :admins
  resources :users
  resources :devises
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'main#index'
end
