Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get 'dashboard', to: "pages#dashboard"
  # resources :bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :instruments do
    resources :bookings, only: [:new, :create]
  end
  namespace :owner do
    resources :instruments
    resources :bookings, only: [:index, :show]
  end


end
