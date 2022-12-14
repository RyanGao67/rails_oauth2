Rails.application.routes.draw do
  use_doorkeeper
  root to: 'tasks#index'

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1 do
      resources :tasks
      get 'user', to: 'users#show'
    end
  end

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  resources :tasks
end
