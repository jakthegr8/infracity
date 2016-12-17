Rails.application.routes.draw do
  match 'register', to: 'users#register', via: [:post]
  match 'upload_user_avatar', to: 'users#upload_user_avatar', via: [:post, :patch]
  match 'upload', to: 'users#index', via: [:get]

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

  resources :roads do
    resources :complaints, only: [:show, :create, :index]
  end

  resources :ratings do
    collection do
      get :reset
    end
    member do
      get :approve
      get :reject
    end
  end
  get 'approval', to: 'ratings#approval'
  resources :profiles
  resources :dashboard
  resources :roads, defaults: {format: :json} do
    member do
      get :info
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
