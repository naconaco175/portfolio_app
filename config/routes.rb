Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: "omniauth_callbacks",
              sessions: "users/sessions",
         registrations: "users/registrations"
   }
  root 'pages#index'
  get  'pages/show'

  resources :users, only: [:show, :index]
end
