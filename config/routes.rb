Rails.application.routes.draw do
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
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
