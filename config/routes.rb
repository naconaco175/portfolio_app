Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: "omniauth_callbacks",
              sessions: "users/sessions",
         registrations: "users/registrations",
   }

  root                              to:"pages#index"
  post   '/',                       to:"pages#index"
  post   'pages/guest_sign_in',     to:"pages#guest_sign_in"
  get    'pages/show'
  get    'pages/about'
  get    '/ramens/search',          to: "ramens#search"
  post   '/ramens/:ramen_id/likes', to: "likes#create"
  delete '/ramens/:ramen_id/likes', to: "likes#destroy"

  resources :users,  only: [:show, :index]
  resources :ramens, only: [:show, :new, :create, :edit, :update, :destroy]
end
