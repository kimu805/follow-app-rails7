Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets, only: [:index, :new, :create]
  resources :users do
    resources :relationships, only: [:create, :destroy]
  end
end
