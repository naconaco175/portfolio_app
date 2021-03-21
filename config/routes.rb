Rails.application.routes.draw do
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  # resources :users, only: [:index, :show, :edit, :update]
  resources :users
  root 'pages#index'
  get  'pages/show'
end
