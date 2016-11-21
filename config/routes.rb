Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :bikes do
    resources :bookings
    resources :bike_accessories, only: [ :create ]
  end

end
