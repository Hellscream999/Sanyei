Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'main#index'
  end
  resources :handymen
  resources :customers
  resources :shops
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'main#index'
end
