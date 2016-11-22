Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bikes do
    resources :bookings
    resources :bike_accessories, only: [ :create ]
  end

  get '/bikes/:bike_id/bookings/:id/confirmation', to: 'bookings#confirmation', as: 'bike_booking_confirmation'

  get '/my_profile', to: 'dashboards#my_profile'
  get '/my_bookings', to: 'dashboards#my_bookings'
  get '/my_bikes', to: 'dashboards#my_bikes'

end
