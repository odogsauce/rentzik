Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
    # resources :bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :instruments do
    resources :bookings
  end
    namespace :owner do
     resources :bookings, only: [:index, :show]
   end
end
