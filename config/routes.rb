Rails.application.routes.draw do
  get 'auth_controller/create'
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy]
      resources :spaces, only: [:show, :create, :update, :destroy]
      resources :bookings, only: [:index, :show, :create, :update, :destroy]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/get_spaces/:starting_index', to: 'spaces#get_spaces'

    end
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
