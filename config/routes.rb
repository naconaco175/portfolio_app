Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: "omniauth_callbacks",
              sessions: "users/sessions",
         registrations: "users/registrations"
   }
  root 'pages#index'
  post '/', to:'pages#index'
  get  'pages/show'
  post '/ramens/:ramen_id/likes' => "likes#create"
  delete '/ramens/:ramen_id/likes' => "likes#destroy"

  resources :users,      only: [:show, :index]
  resources :ramens, only: [:show, :new, :create, :edit, :update, :destroy]
end
