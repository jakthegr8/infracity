Rails.application.routes.draw do
  
  post 'users/register', as: 'register'

  namespace :admin do
    resources :countries
    resources :districts
    resources :profiles
    resources :role_types
    resources :states
    resources :taluks
    resources :users
    resources :users_roles_maps
    resources :wards
    resources :zones
    root to: "countries#index"
  end

  root to: "admin/countries#index"
  resources :roads do
    resources :complaints, only: [:show]
  end

  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
