Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :articles

  get 'about', to: 'pages#about'

  resources :rules

  get 'dashboard', to: 'pages#dashboard'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end