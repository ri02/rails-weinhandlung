Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  resources :pages , only: [:index]
  resources :products, only: [:index], as: 'products'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
