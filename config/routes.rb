Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  resources :moorings, only: [:show, :index] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:destroy]

  devise_for :users
  root to: 'pages#home'

  get "/dashboard", to: "pages#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
