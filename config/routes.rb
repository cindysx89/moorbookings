Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'

  resources :bookings, except: [:edit, :create]
  resources :moorings, except: [:edit] do
    resources :bookings, only: [:create]
  end
end
