Rails.application.routes.draw do

  resources :areas
  resources :services
  resources :roomrentalmanagers
  resources :roomcheckouts
  resources :pricelists
  resources :paymentmanagements
  resources :room_rental_managers
  resources :room_check_outs
  resources :price_lists
  resources :payment_managements
  resources :guests
  resources :devices
  resources :rooms do
    resources :guests
    resources :devices
  end

  resources :areas do 
      resources :pricelists
  end
  resources :areas do 
    resources :rooms
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users,controllers: {sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  root to: 'rooms#index'
 get "/static_pages/:page", to: "static_pages#show"
 root "static_pages#show", page: "home"

end
