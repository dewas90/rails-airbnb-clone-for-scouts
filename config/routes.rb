Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :camp_sites do
    resources :bookings, only: [:create]
  end

  resources :profiles, except: [:index]

  resources :bookings, only: [:index, :show] do
    member do
      post 'approve', to: 'bookings#approve'
      post 'cancel', to: 'bookings#cancel'
    end
  end

  resources :hosts, only: [:show, :new, :create, :edit, :update]

end
